<?php
// Load file koneksi.php
include "koneksi.php";

// Ambil data ID Provinsi yang dikirim via ajax post
$kode_cabang = $_POST['cabang'];

// Buat query untuk menampilkan data kota dengan provinsi tertentu (sesuai yang dipilih user pada form)
$sql = mysqli_query($connect, "SELECT * FROM karyawan WHERE kode_cabang='".$kode_cabang."' ORDER BY nama_karyawan");

// Buat variabel untuk menampung tag-tag option nya
// Set defaultnya dengan tag option Pilih
$html = "<option value=''>Pilih</option>";

while($data = mysqli_fetch_array($sql)){ // Ambil semua data dari hasil eksekusi $sql
	$html .= "<option value='".$data['nik']."'>".$data['nama_karyawan']."</option>"; // Tambahkan tag option ke variabel $html
}

$callback = array('data_karyawan'=>$html); // Masukan variabel html tadi ke dalam array $callback dengan index array : data_kota

echo json_encode($callback); // konversi varibael $callback menjadi JSON
?>
