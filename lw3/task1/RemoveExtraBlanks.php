<?php
header('Content-Type: text/plain');
function RemoveExtraBlanks(string $text): ?string
{
    $text = trim($text, ' ');
    while (strpos($text, '  '))
        $text = str_replace('  ', ' ', $text);
    return $text;
}

$text = $_GET['text'];
if ($text !== null)
    if ($text === '')
        echo 'Введите строку';
    else
        echo RemoveExtraBlanks($text);
else
    echo 'Введите данные text';

