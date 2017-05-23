<?php
if(isset($_POST['field1'])) {
    $path = $_POST['field1'];
    $ret = file_put_contents('mydata.txt', $path);
    if($ret === false) {
        die('There was an error writing this file');
    }
    else {
        echo "$ret bytes written to file";
    }
}
else {
   die('no post data to process');
}
?>
