<?php $this->extend("layout/template_manga"); ?>
<?php $this->section("content"); ?>
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
<?php $this->endSection(); ?>