<html>
<head>
	<title>Chained Dropdown</title>
	
	<!-- Load librari/plugin jquery nya -->
	<script src="js/jquery.min.js" type="text/javascript"></script>
	
	<!-- Load File javascript config.js -->
        <script src="js/config_karyawan.js" type="text/javascript"></script>
</head>
<body>
	<h1>Chained Dropdown</h1>
	<hr>
	
	<table cellpadding="8">
		<tr>
			<td><b>Cabang</b></td>
			<td>
				<select name="cabang" id="cabang" style="width: 200px;">
					<option value="">Pilih</option>
					
					<?php
					// Load file koneksi.php
					include "koneksi.php";
					
					// Buat query untuk menampilkan semua data siswa
					$sql = mysqli_query($connect, "SELECT * FROM cabang");
			
					while($data = mysqli_fetch_array($sql)){ // Ambil semua data dari hasil eksekusi $sql
						echo "<option value='".$data['kode_cabang']."'>".$data['nama_cabang']."</option>";
					}
					?>
				</select>
			</td>
		</tr>
		<tr>
			<td><b>Karyawan</b></td>
			<td>
				<select name="karyawan" id="karyawan" style="width: 200px;">
					<option value="">Pilih</option>
				</select>

				<div id="loading" style="margin-top: 15px;">
					<img src="images/loading.gif" width="18"> <small>Loading...</small>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
