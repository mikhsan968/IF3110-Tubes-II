<body>
	<link rel="stylesheet" href="style.css" type="text/css">
		<!--Header's body-->
		<div id="logo">
			<a href="index.jsp"><img src="market.gif" alt="RuSerBa" width="150" height="100"></a>
		</div>
		<form id="search" action="search.php" method="get">
			Nama : <input type="search" name="keyword"><br>
			Kategori : <select name="kategori">
				<option value="beras" selected>Beras</option>
				<option value="daging">Daging</option>
				<option value="ikan">Ikan</option>
				<option value="sayur">Sayur</option>
				<option value="buah">Buah</option>
			</select><br>
			Harga : <select name="harga">
				<option value="<10000" selected>< 10000</option>
				<option value="10000-50000">10000 - 50000</option>
				<option value=">50000">> 50000</option>
			</select><br>
			<input type="submit" value="Search"><br><br>
		</form>
		<div id="account">
			<script>
				renderAccount();
			</script>
		</div>
		<div class = "menu_nav">
		<ul id="kategori">
			<li><a href="detilkategori.jsp?kategori=beras&sort=namaasc">Beras</a></li>
			<li><a href="detilkategori.jsp?kategori=daging&sort=namaasc">Daging</a></li>
			<li><a href="detilkategori.jsp?kategori=ikan&sort=namaasc">Ikan</a></li>
			<li><a href="detilkategori.jsp?kategori=sayur&sort=namaasc">Sayur</a></li>
			<li><a href="detilkategori.jsp?kategori=buah&sort=namaasc">Buah</a></li>
		</ul>
		</div>