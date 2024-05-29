<?php
// Mulai session
session_start();

// Konfigurasi koneksi database
$host = 'localhost';
$user = 'root';
$password = '';
$database = 'Uprak';

$koneksi = new mysqli($host, $user, $password, $database);

// Cek koneksi
if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}

// Fungsi untuk menambah data ke tabel
function insert_data($koneksi, $tahun, $nominal) {
    // Escape karakter khusus untuk mencegah SQL Injection
    $tahun = $koneksi->real_escape_string($tahun);
    $nominal = $koneksi->real_escape_string($nominal);

    // Kueri INSERT dengan menangani field kosong
    $sql = "INSERT INTO spp (tahun, nominal) VALUES ";
    $sql .= "('$tahun', '$nominal')";

    if ($koneksi->query($sql) === TRUE) {
        // Set pesan sukses dalam session
        $_SESSION['pesan'] = "Data berhasil ditambahkan.";
        header("Location: ../../page/auth/tables.php"); // Redirect setelah proses berhasil
        exit(); // Hentikan proses setelah redirect
    } else {
        echo "Error: " . $sql . "<br>" . $koneksi->error;
    }
}

// Cek apakah form disubmit
if (isset($_POST['submit_tambah'])) {
    $tahun = $_POST['tahun'];
    $nominal = $_POST['nominal'];
    
    // Panggil fungsi insert_data dengan data yang diterima dari form
    insert_data($koneksi, $tahun, $nominal);
}

// Tutup koneksi
$koneksi->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Tambah Data</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <?php
    // Tampilkan pesan jika ada
    if (isset($_SESSION['pesan'])) {
        echo "<p>{$_SESSION['pesan']}</p>";
        unset($_SESSION['pesan']); // Hapus pesan setelah ditampilkan
    }
    ?>
      <div class="container">
        <h2 class="mt-5">Form Tambah Data</h2>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
            <div class="form-group">
                <label for="tahun">Tahun:</label>
                <input type="text" class="form-control" id="tahun" name="tahun" required>
            </div>
            <div class="form-group">
                <label for="nominal">Nominal:</label>
                <input type="text" class="form-control" id="nominal" name="nominal" required>
            </div>
            <button type="submit" name="submit_tambah" class="btn btn-primary">Tambah Data</button>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
