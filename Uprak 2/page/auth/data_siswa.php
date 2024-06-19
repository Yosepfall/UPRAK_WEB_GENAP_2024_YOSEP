foreach ($results as $row) {
            echo "<tr>";
            echo "<td>".$row['nis']."</td>";
            echo "<td>".$row['nama_lengkap']."</td>";
            echo "<td>".$row['tanggal_lahir']."</td>";
            echo "<td>".$row['jenis_kelamin']."</td>";
            echo "<td>".$row['alamat']."</td>";
            echo "<td>".$row['no_hp']."</td>";
            echo "<td>".$row['kode_kelas']."</td>";
            echo "</tr>";
        }