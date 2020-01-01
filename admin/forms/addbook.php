<form action="admin/upload.php" method="POST" enctype="multipart/form-data">
				Tytuł:<br /><input type="text" name="book_title" /><br /><br />
				Autor: <br /><input type="text"  name="id_autora" /><br /><br />
				Rok wydania<br /><input type="text"  name="rok_wydania" /><br /><br />
				Cena<br /><input type="text"  name="cena" /><br /><br />
				Kategorie:<br />
				<input type="text"  name="kategoria1" />
				<input type="text"  name="kategoria2" />
				<input type="text"  name="kategoria3" /><br /><br />
				Krótki opis ksiązki:<br />
				<textarea name="opis" style="width: 350px; height: 250px; resize: none;"></textarea>
				<br /><br />
				Okładka:
				<div id="postCategoryContent">
					
						<input type="file" name="files[]" />
						<input type="submit" onClick="showUploaded()"/>
					</form>
					<div id="uploaded">
						<?php
							
						?>
					</div>
				</div>