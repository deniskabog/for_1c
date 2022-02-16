<?php
$column = 0;
$string = '2 + (4 - 3)';
for ($i=0; $i<strlen($string); $i++) {
    $char = $string[$i];
    if ($char == '(')
        $column++;
    if ($char == ')')
        $column--;
}
if ($column == 0) {
    echo 'Количество скобок совпадает';
} else echo 'Ошибка';