<?php
session_start();
// Konfigurasi koneksi database
$koneksi = new mysqli('localhost', 'root', '', 'Uprak');

// Cek koneksi
if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}

// Fungsi untuk menambah data ke tabel
function insert_data($tahun, $nominal) {
    global $koneksi;
    $sql = "INSERT INTO spp (tahun, nominal) VALUES ('$tahun', '$nominal')";
    if ($koneksi->query($sql) === TRUE) {
        echo "Data berhasil ditambahkan.";
    } else {
        echo "Error: " . $sql . "<br>" . $koneksi->error;
    }
}

// Tutup koneksi
// Pindahkan penutupan koneksi ke akhir skrip atau setelah selesai menggunakan koneksi
// Jangan menutup koneksi sebelum semua operasi database selesai
// $koneksi->close(); <-- ini dipindahkan ke akhir skrip atau setelah selesai menggunakan koneksi
?>
