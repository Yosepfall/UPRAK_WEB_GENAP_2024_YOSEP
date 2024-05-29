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
