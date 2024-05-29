
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

// Fungsi untuk menghapus data dari tabel
function delete_data($koneksi, $id) {
    // Escape karakter khusus untuk mencegah SQL Injection
    $id = $koneksi->real_escape_string($id);

    // Kueri DELETE
    $sql = "DELETE FROM spp WHERE id = '$id'";

    if ($koneksi->query($sql) === TRUE) {
        // Set pesan sukses dalam session
        $_SESSION['pesan'] = "Data berhasil dihapus.";
        header("Location: index.php"); // Redirect setelah proses berhasil
        exit(); // Hentikan proses setelah redirect
    } else {
        echo "Error: " . $sql . "<br>" . $koneksi->error;
    }
}

// Cek apakah parameter ID diterima
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    
    // Panggil fungsi delete_data dengan ID yang diterima
    delete_data($koneksi, $id);
}

// Tutup koneksi
$koneksi->close();
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
