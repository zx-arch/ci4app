<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/style.css'); ?>">
</head>

<body>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
    <div class="wrapper">
        <div class="topnav">
            <a href="/">Home</a>
            <a href="/kategori/terpopuler">Terpopuler</a>
            <a href="/kategori/terbaru">Terbaru</a>
            <a href="/status/tamat">Tamat</a>
            <a class="active" href="/status/belumtamat">Belum Tamat</a>
            <?php include APPPATH . 'Views/layout/search_form.php'; ?>
        </div>
        <div class="cols">
            <?php if (!empty($belumtamat)) : ?>
                <?php foreach ($belumtamat as $data) : ?>
                    <div class="col" ontouchstart="this.classList.toggle('hover');">
                        <div class="container">
                            <div class="front" style="background-image: url(<?= $data['sampul']; ?>)">
                                <div class="inner">
                                    <span style="font-weight: bold;"><?= $data['judul']; ?></span>
                                </div>
                            </div>
                            <div class="back">
                                <div class="inner">
                                    <p style="color: black;">Komik ini ditulis oleh <?= $data['penulis']; ?>, dirilis pada tahun <?= $data['tahun_rilis']; ?>, dengan rating <?= $data['rating']; ?></p>
                                    <a href="" class="button6">Baca Komik</a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php endif; ?>
        </div>
        <?php if (empty($belumtamat)) : ?>
            <?php if (empty($tamat) and $tamat !== "belum") : ?>
                <h2 style="color: white;text-align:center;">Komik "<?= $search; ?>" Belum Tersedia</h2>
            <?php elseif (!empty($tamat) and $tamat !== "belum") : ?>
                <h2 style="color: white;text-align:center;">Komik "<?= $search; ?>" Sudah Tamat</h2>
            <?php endif; ?>
        <?php endif; ?>
        <script type="text/javascript" src="<?php echo base_url('js/script.js'); ?>"></script>
    </div>
</body>

</html>