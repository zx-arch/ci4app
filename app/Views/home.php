<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive CSS Card Layout using Flexbox</title>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/style.css'); ?>">
</head>

<body>
    <div class="topnav">
        <a class="active" href="/">Home</a>
        <a href="/kategori/terpopuler">Terpopuler</a>
        <a href="/kategori/terbaru">Terbaru</a>
        <a href="/status/tamat">Tamat</a>
        <a href="/status/belumtamat">Belum Tamat</a>
        <?php if ($hasil === "caritidakditemukan") : ?>
            <form method="post" id="form">
                <input type="search" name="search" value="<?= $search; ?>" autocomplete="off" id="search" class="form-control" title="Cari Minimal 4 huruf" />
            </form>
        <?php elseif ($hasil === "cariditemukan") : ?>
            <form method="post" id="form">
                <input type="search" name="search" autocomplete="off" id="search" class="form-control habiscari" value="<?= $search; ?>" title="Cari Minimal 4 huruf" />
            </form>
        <?php elseif ($hasil === "tidakcaridata") : ?>
            <form method="post" id="form">
                <input type="search" name="search" placeholder="Cari Komik Manga ..." autocomplete="off" id="search" class="form-control habiscari" title="Cari Minimal 4 huruf" />
            </form>
        <?php endif; ?>
    </div>
    <!--card layout start-->
    <div class="cards-list">
        <?php $count = 0; ?>
        <?php foreach ($home as $data) : ?>
            <?php $count++; ?>
            <?php if (fmod($count, 6) > 0) : ?>
                <div class="card 1">
                    <div class="card_image" onclick='foo(event, "<?= $data['judul']; ?>");''>
                        <img src="<?= $data['sampul']; ?>" />
                        <input type="hidden" name="<?= $data['judul']; ?>" class="data">
                    </div>
                </div>
            <?php else : ?>
                <?php continue; ?>
            <?php endif; ?>
        <?php endforeach; ?>
    </div>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url('js/script.js'); ?>"></script>


    <!--card layout end-->

</body>

</html>