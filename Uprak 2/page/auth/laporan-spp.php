<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Tagihan</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Masukkan NIS dan Tahun Tagihan</h2>
    <form action="" method="post" class="mb-4">
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="nis" class="col-form-label">NIS:</label>
                <input type="text" id="nis" name="nis" class="form-control" required>
            </div>
            <div class="form-group col-md-4">
                <label for="tahun_tagihan" class="col-form-label">Tahun:</label>
                <input type="text" class="form-control" id="tahun_tagihan" name="tahun_tagihan" placeholder="Tahun" required>
            </div>
            <div class="form-group col-md-4">
                <button type="submit" class="btn btn-primary mb-2">Cari</button>
            </div>
        </div>
    </form>

    <?php
    // Koneksi ke database
    $conn = mysqli_connect("localhost", "root", "", "uprak_1");

    // Periksa koneksi
    if (!$conn) {
        die("Koneksi gagal: ". mysqli_connect_error());
    }

    // Data Bulan
    $bulan = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

    // Proses form jika user mengisi NIS
    if (isset($_POST['nis']) && isset($_POST['tahun_tagihan'])) {
        $nis = $_POST['nis'];
        $tahun_tagihan = $_POST['tahun_tagihan'];

        // Mendapatkan data siswa dari tabel siswa berdasarkan NIS
        $sql = "SELECT nama_lengkap FROM siswa WHERE nis = '$nis'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            $nama_lengkap = $row['nama_lengkap'];

            // Mendapatkan data pembayaran dari tabel pembayaran berdasarkan NIS dan Tahun Tagihan
            $sql = "SELECT bulan_tagihan FROM pembayaran WHERE nis = '$nis' AND tahun_tagihan = '$tahun_tagihan'";
            $result = mysqli_query($conn, $sql);

            // Inisialisasi array bulan yang dibayar
            $bulan_dibayar = [];

            // Menyimpan bulan yang dibayar ke dalam array
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    $bulan_dibayar[] = $row['bulan_tagihan'];
                }
            }

            // Tampilkan formulir dengan data siswa dan status pembayaran
            echo "<div class='col-md-12'>";
            echo "<h2>Data Tagihan</h2>";
            echo "<form>";
            echo "<div class='form-group'>";
            echo "<label for='nis'>NIS:</label>";
            echo "<input type='text' class='form-control' id='nis' name='nis' value='$nis' readonly>";
            echo "</div>";
            echo "<div class='form-group'>";
            echo "<label for='tahun_tagihan'>Tahun:</label>";
            echo "<input type='text' class='form-control' id='tahun_tagihan' name='tahun_tagihan' value='$tahun_tagihan' readonly>";
            echo "</div>";
            echo "<div class='form-group'>";
            echo "<label for='nama_lengkap'>Nama Lengkap:</label>";
            echo "<input type='text' class='form-control' id='nama_lengkap' name='nama_lengkap' value='$nama_lengkap' readonly>";
            echo "</div>";

            echo "<table class='table table-bordered'>";
            echo "<thead class='thead-light'><tr><th>Bulan</th><th>Status</th></tr></thead>";
            echo "<tbody>";

            // Looping melalui data bulan
            foreach ($bulan as $b) {
                // Periksa apakah bulan telah dibayar
                $status = in_array($b, $bulan_dibayar)? "Lunas" : "Belum Lunas";
                echo "<tr>";
                echo "<td>$b</td>";
                echo "<td>$status</td>";
                echo "</tr>";
            }

            echo "</tbody>";
            echo "</table>";
            echo "<button type='submit' class='btn btn-success'>Kirim</button>";
            echo "</form>";
            echo "</div>";
        } else {
            echo "<div class='col-md-12'>";
            echo "<div class='alert alert-danger'>NIS tidak ditemukan</div>";
            echo "</div>";
        }
    }

    // Tutup koneksi
    mysqli_close($conn);
    ?>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
