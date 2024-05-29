<?php
// Koneksi ke database
$koneksi = new mysqli('localhost', 'root', '', 'Uprak');

// Cek koneksi
if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}
?>
