<h3> Tambah Persediaan Menu</h3>

<form action="" method="post">
    <table>
    <tr>
        <td width="120"> Kategori</td>
        <td> <input type="text" name="kategori"> </td>
    </tr>
    <tr>
        <td> Nama Menu </td>
        <td> <input type="text" name="nama_menu"> </td>
    </tr>
    <tr>
        <td> Harga Menu </td>
        <td> <input type="text" name="harga_menu"> </td>
    </tr>
    <tr>
        <td> Total Menu </td>
        <td> <input type="text" name="total_menu"> </td>
    </tr>
    <tr>
        <td></td>
        <td> <input type="submit" name="proses" value="simpan"> </td>
    </tr>
    </table>
</form>

<?php
include "koneksi.php";


if(isset($_POST['proses'])){
    mysqli_query($koneksi,"insert into tabel_menu set
    kategori = '$_POST[kategori]',
    nama_menu = '$_POST[nama_menu]',
    harga_menu = '$_POST[harga_menu]',
    total_menu = '$_POST[total_menu]'");

    echo "Data baru telah di tersimpan";

    include "data_menu.php";

}
?>