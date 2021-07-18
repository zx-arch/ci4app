<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive CSS Card Layout using Flexbox</title>
    <style>
        .topnav {
            overflow: hidden;
            background-color: #e9e9e9;
        }

        /* Style the links inside the navigation bar */
        .topnav a {
            float: left;
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        /* Change the color of links on hover */
        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Style the "active" element to highlight the current page */
        .topnav a.active {
            background-color: #2196F3;
            color: white;
        }

        /* Style the search box inside the navigation bar */
        .topnav input[type=search] {
            float: right;
            padding: 6px;
            border: none;
            margin-top: 8px;
            margin-right: 16px;
            font-size: 17px;
        }

        /* When the screen is less than 600px wide, stack the links and the search field vertically instead of horizontally */
        @media screen and (max-width: 600px) {

            .topnav a,
            .topnav input[type=search] {
                float: none;
                display: block;
                text-align: left;
                width: 100%;
                margin: 0;
                padding: 14px;
            }

            .topnav input[type=search] {
                border: 1px solid #ccc;
            }
        }

        .cards-list {
            z-index: 0;
            width: 100%;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .card {
            margin: 10px auto;
            width: 200px;
            height: 200px;
            border-radius: 40px;
            box-shadow: 5px 5px 30px 7px rgba(0, 0, 0, 0.25), -5px -5px 30px 7px rgba(0, 0, 0, 0.22);
            cursor: pointer;
            transition: 0.4s;
        }

        .card .card_image {
            width: inherit;
            height: inherit;
            border-radius: 40px;
        }

        .card .card_image img {
            width: inherit;
            height: inherit;
            border-radius: 40px;
            object-fit: cover;
        }

        .card .card_title {
            text-align: center;
            border-radius: 0px 0px 40px 40px;
            font-family: sans-serif;
            font-weight: bold;
            font-size: 30px;
            margin-top: -80px;
            height: 40px;
        }

        .card:hover {
            transform: scale(0.9, 0.9);
            box-shadow: 5px 5px 30px 15px rgba(0, 0, 0, 0.25),
                -5px -5px 30px 15px rgba(0, 0, 0, 0.22);
        }

        .title-white {
            color: white;
        }

        .title-black {
            color: black;
        }

        @media all and (max-width: 500px) {
            .card-list {
                /* On small screens, we are no longer using row direction but column */
                flex-direction: column;
            }
        }
    </style>
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
                    <div class="card_image"><img src="<?= $data['sampul']; ?>" /> </div>
                    <div class="card_title title-white">
                        <p><?= $data['judul']; ?></p>
                    </div>
                </div>
            <?php else : ?>
                <?php continue; ?>
            <?php endif; ?>
        <?php endforeach; ?>
    </div>
    <!--card layout end-->

</body>

</html>