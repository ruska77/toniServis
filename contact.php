<?php
print '
	<h1>Kontakt</h1>
	<div id="contact">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31454.037457606613!2d16.097089065838365!3d45.82787071079163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x28d10cf249616180!2sFast%20Food%20Banana!5e0!3m2!1shr!2shr!4v1608836401468!5m2!1shr!2shr" width="50%" height="500" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>				
		<form id="contact_form" name="contact_form" method="POST">
			<label for="fname">Ime *</label>
			<input type="text" id="fname" name="firstname" placeholder="Vaše ime..." required>

			<label for="lname">Prezime *</label>
			<input type="text" id="lname" name="lastname" placeholder="Vaše prezime..." required>
			
			<label for="lname">E-mail adresa *</label>
			<input type="email" id="email" name="email" placeholder="Vaša e-mail adresa..." required>

			<label for="country">Države</label>
			<select id="country" name="country">
				<option value="">Odaberi...</option>
				<option value="Germany">Germany</option>
				<option value="Croatia" selected>Croatia</option>
				<option value="Austria">Austria</option>
				<option value="USA">USA</option>
			</select>

			<label for="subject">Poruka</label>
			<textarea id="subject" name="subject" placeholder="Napišite nešto..." style="height:200px"></textarea>

			<input type="submit" value="Pošalji">
		</form>
	</div>';
?>