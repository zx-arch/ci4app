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
        <?php foreach ($datanaruto as $dt) : ?>
            <div class="images">
                <img style="height: 300px;margin-top:5px;" src="<?= $dt['sampul']; ?>" />

            </div>
            <div class="product">
                <h1><?= $dt['judul']; ?></h1>
                <h2><?= $genrenaruto; ?></h2>
                <p class="desc"><?= $dt['sinopsis']; ?></p>
                <div class="chapter">
                    <?php foreach ($chapternaruto as $ch) : ?>
                        <a href="<?= $ch['slug']; ?>/<?= $ch['slug']; ?>-<?= $ch['chapter']; ?>">
                            <?php $ch['chapter'] = ucfirst(str_replace("-", " ", $ch['chapter'])) ?>
                            <?php $ch['slug'] = ucwords(str_replace("-", " ", $ch['slug'])) ?>
                            <p><?= $ch['slug']; ?> <?= $ch['chapter']; ?></p>
                        </a>
                    <?php endforeach; ?>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/style_page_manga.css'); ?>">
</body>

</html>