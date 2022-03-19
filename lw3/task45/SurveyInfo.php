<?php
header('Content-Type: text/plain');

$email = $_GET['email'];
$stashPath = 'data';
if (is_null($email))
    echo 'no_email'; 
else
{
    $compiledFilePath = __DIR__ . '\\' . $stashPath . DIRECTORY_SEPARATOR . $email;
    if (file_exists($stashPath . '\\' . $email) !== false)
    {
        $fileHandle = fopen($compiledFilePath, 'rt');
        while ($line = fgets($fileHandle)) 
            echo $line;
        fclose($fileHandle);
    }
    else
        echo "\n";
}