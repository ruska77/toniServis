<!DOCTYPE html>
<html lang="hr">
	<head>
        <link rel="stylesheet" href="style.css">

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<meta name="description" content="some description">
		<meta name="keywords" content="banana, prehrana, zdravo, voće">
		
		<meta itemprop="name" content="Hello Example">
		<meta itemprop="description" content="Some description">
		<meta itemprop="image" content="Your URL"> 
		
		<meta property="og:title" content="Hello Example">
		<meta property="og:type" content="article">
		<meta property="og:url" content="Your URL">
		<meta property="og:image" content="Your URL">
		<meta property="og:description" content="Some description">
		<meta property="article:tag" content="banana, prehrana, zdravo, voće">
		<meta name="author" content="ktomic2@vvg.hr">
		
		<link rel="icon" href="images/favicon.ico" type="image/x-icon"/>
		<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
		
		<title>Probna stranica - Kontakt</title>
	</head>
<body>
	<header>
		<div class="hero-image" style="height: 200px;"></div>
		<nav>
			<ul>
                <li><a href="index.php?menu=1">Početna stranica</a></li>
                <li><a href="index.php?menu=2">Vijesti</a></li>
                <li><a href="index.php?menu=3">Kontakt</a></li>
                <li><a href="index.php?menu=4">O nama</a></li>
			</ul>
		</nav>
	</header>
	<main>
		<h1>Kontakt forma</h1>
		<div id="contact">
		    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31454.037457606613!2d16.097089065838365!3d45.82787071079163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x28d10cf249616180!2sFast%20Food%20Banana!5e0!3m2!1shr!2shr!4v1608836401468!5m2!1shr!2shr" width="50%" height="500" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>				
			<?php
				print '<p style="text-align:center; padding: 10px; background-color: #d7d6d6;border-radius: 5px;">Zaprimili smo vaše pitanje. Odgovoriti ćemo unutar 24 sata.</p>';
				$EmailHeaders  = "MIME-Version: 1.0\r\n";
				$EmailHeaders .= "Content-type: text/html; charset=utf-8\r\n";
				$EmailHeaders .= "From: <kt99kiki@gmail.com>\r\n";
				$EmailHeaders .= "Reply-To:<kt99kiki@gmail.com>\r\n";
				$EmailHeaders .= "X-Mailer: PHP/".phpversion();
				$EmailSubject = 'Probna stranica - Kontakt';
				$EmailBody  = '
				<html>
				<head>
				   <title>'.$EmailSubject.'</title>
				   <style>
					body {
					  background-color: #ffffff;
						font-family: Arial, Helvetica, sans-serif;
						font-size: 16px;
						padding: 0px;
						margin: 0px auto;
						width: 500px;
						color: #000000;
					}
					p {
						font-size: 14px;
					}
					a {
						color: #00bad6;
						text-decoration: underline;
						font-size: 14px;
					}
					
				   </style>
				   </head>
				<body>
					<p>Ime: ' . $_POST['firstname'] . '</p>
					<p>Prezime: ' . $_POST['lastname'] . '</p>
					<p>E-mail: <a href="mailto:' . $_POST['email'] . '">' . $_POST['email'] . '</a></p>
					<p>Država: ' . $_POST['country'] . '</p>
					<p>Predmet: ' . $_POST['subject'] . '</p>
				</body>
				</html>';
				print '<p>Ime: ' . $_POST['firstname'] . '</p>
				<p>Prezime: ' . $_POST['lastname'] . '</p>
				<p>E-mail: ' . $_POST['email'] . '</p>
				<p>Država: ' . $_POST['country'] . '</p>
				<p>Predmet: ' . $_POST['subject'] . '</p>';
				mail($_POST['email'], $EmailSubject, $EmailBody, $EmailHeaders);
			?>
		</div>
	</main>
	<footer>
        <p >Copyright &copy; '. date("Y").' Kristian Tomić. <a href="https://github.com/tomickristian/WebAplikacijeProjekt" target="_blank"><img src="images/github.svg" title="Github" alt="Github"></a></p>
	</footer>

	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-98455037-1', 'auto');
	  ga('send', 'pageview');

	</script>
</body>
</html>