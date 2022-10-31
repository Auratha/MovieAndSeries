<?php include('db.php') ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movieandseries</title>
    <?php include('link.php') ?>
</head>

<body>

    <!-- Calling Navbar HERE -->
    <?php include('navbar.php') ?>

    <div class="container my-5">
        <h1>Movies</h1>
        <div class="row movies-box">
            <?php
            
                $inputText = $_COOKIE['inputText'];
                $moviesql = "SELECT * FROM movie_card_info WHERE movie_name LIKE '%$inputText%'";
                $moviequery = mysqli_query($conn, $moviesql);
                while ($movie = mysqli_fetch_assoc($moviequery)) {
            ?>
                <div class="col-2">
                    <a href="./showmovie.php?id=<?php echo $movie['id'] ?>" style="text-decoration:none; color:#000">
                        <div class="movie-item">
                            <div class="photo-box">
                                <img src="<?php echo $movie['movie_img'] ?>" width="100%" height="100%">
                                <div class="star-box">
                                    <i class="fa-solid fa-star text-warning"></i>
                                    <span><?php echo $movie['movie_rating'] ?></span>
                                </div>
                                <div class="hover-play-box">
                                    <i class="fa-regular fa-circle-play"></i>
                                </div>
                            </div>
                            <p class="text-center"><?php echo substr($movie['movie_name'], 0, 15) . "..." ?></p>
                        </div>
                    </a>
                </div>
            <?php } ?>
        </div>
    </div>

    <div class="container my-5">
        <h1>Series</h1>
        <div class="row series-box" id="series-page">
            <?php
            $seriesquery = mysqli_query($conn, "SELECT * FROM series_info WHERE series_name LIKE '%$inputText%'");
            while ($series = mysqli_fetch_assoc($seriesquery)) { ?>
                <div class="col-2" title="<?php echo $series['series_name'] ?>">
                    <div class="serie-item">
                        <div class="photo-box">
                            <img src="<?php echo $series['img_url'] ?>" width="100%" height="100%">
                            <div class="star-box">
                                <i class="fa-solid fa-star text-warning"></i>
                                <span><?php echo $series['rating'] ?></span>
                            </div>
                            <div class="hover-play-box">
                                <i class="fa-regular fa-circle-play"></i>
                            </div>
                            <div class="season-box">
                                <p><?php echo $series['season'] ?></p>
                            </div>
                        </div>
                        <p class="text-center"><?php echo $series['series_name'] ?></p>
                    </div>
                </div>

            <?php }
            ?>

    <!-- bootstrap css1 js1 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    <script src="./script.js" type="text/javascript"></script>
</body>