<!DOCTYPE HTML PUBLIC
                 "-//W3C//DTD HTML 4.01 Transitional//EN"
                 "http://www.w3.org/TR/html401/loose.dtd">
<html>
<body>
	<p>
	<?php
		foreach($_GET as $arg)
		{
			print "{$arg}";
			print "\n";
		}
	?>
	<p>
</body>
</html>