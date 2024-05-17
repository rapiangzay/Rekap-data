<h3> Data Persediaan Menu </h3>

<table border="1">
    <tr>
        <th>Kategori</th>
        <th>Nama Menu</th>
        <th>Harga</th>
        <th>Total</th>
    </tr>

    <?php
    include "koneksi.php";

    $ambildata = mysqli_query($koneksi,"select * from tabel_menu");
    /* While untuk mengulang*/
    while($tampil = mysqli_fetch_array($ambildata)){
        echo"
        <tr>
            <td>$tampil[kategori]</td>
            <td>$tampil[nama_menu]</td>
            <td>$tampil[harga_menu]</td>
            <td>$tampil[total_menu]</td>
        </tr>";
    }
    ?>
</table>
