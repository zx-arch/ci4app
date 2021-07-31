<!DOCTYPE html>
<html lang="en-us" class="not-ie9">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
</head>

<body id="datamanga">
    <div class="container">
        <?php $this->renderSection('content'); ?>
    </div>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/style_page_manga.css'); ?>">
</body>

</html>