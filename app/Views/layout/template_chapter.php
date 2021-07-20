<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/style_chapter.css'); ?>">
</head>

<body>
    <?php $this->renderSection('content'); ?>
</body>

</html>