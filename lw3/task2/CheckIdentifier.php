<?php

header('Content-Type: text/plain');
function CheckIdent(string $text): void
{
    if (!ctype_alpha($text[0]))
    {
        echo 'no - идендификатор не может начинаться с ', $text[0];
        return;
    }
    for ($i = 1; $i < strlen($text); $i++)
    {
        if(!ctype_alpha($text[$i]) && !is_numeric($text[$i]))
        {
            echo 'no - символ ', $text[$i], ' является недопустимым символом в идентификаторе';
            return;
        }
    }
    echo 'yes';
}

$text = $_GET['identifier'];
if ($text !== null)
    if ($text === '')
        echo 'Введите строку';
    else
        CheckIdent($text);
else
    echo 'Введите данные';