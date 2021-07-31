<?php $this->extend("layout/template_manga"); ?>
<?php $this->section("content"); ?>
<?php foreach ($dataonepiece as $dt) : ?>
    <div class="images">
        <img style="height: 300px;margin-top:5px;" src="<?= $dt['sampul']; ?>" />
    </div>
    <div class="product">
        <h1><?= $dt['judul']; ?></h1>
        <h2><?= $genreonepiece; ?></h2>
        <p class="desc" style="font-size: 13.8px;"><?= $dt['sinopsis']; ?></p>
        <div class="chapter">
            <?php foreach ($chapteronepiece as $ch) : ?>
                <a href="<?= $ch['slug']; ?>/<?= $ch['slug']; ?>-<?= $ch['chapter']; ?>">
                    <?php $ch['chapter'] = ucfirst(str_replace("-", " ", $ch['chapter'])) ?>
                    <?php $ch['slug'] = ucwords(str_replace("-", " ", $ch['slug'])) ?>
                    <?php if (strstr($ch['chapter'], "hd") !== " ") : ?>
                        <?php $ch['chapter'] = str_replace(".hd", "", $ch['chapter']); ?>
                        <p class="detailchapter">
                            <?= $ch['slug']; ?> <?= $ch['chapter']; ?> HD
                        </p>
                    <?php else : ?>
                        <p class="detailchapter">
                            <?= $ch['slug']; ?> <?= $ch['chapter']; ?>
                        </p>
                    <?php endif; ?>
                </a>
            <?php endforeach; ?>
        </div>
    </div>
<?php endforeach; ?>
<?php $this->endSection(); ?>