echo "Downloading PHPoole"
curl -sSOL https://phpoole.org/phpoole.phar

echo "Running PHPoole"
php phpoole.phar build

echo '<?php include_once("_site/index.html"); ?>' > index.php

exit 0
