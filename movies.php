<?php
include('db.php');
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movieandseries</title>
    <?php include('link.php') ?>
</head>

<body>

    <!-- Calling Navbar HERE -->
    <?php include('navbar.php') ?>

    <!-- Movies Page Start -->
    <div class="container my-5">
        <h1>Movies</h1>
        <div class="row movies-box" id="movies-page">
            <?php
            $moviesql = "SELECT * FROM movie_card_info";
            $moviequery = mysqli_query($conn, $moviesql);
            while ($movie = mysqli_fetch_assoc($moviequery)) {
            ?>
                <div class="col-2">
                    <a href="./showmovie.html" style="text-decoration:none; color:#000">
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
                        <p class="text-center"><?php echo substr($movie['movie_name'],0,15)."..." ?></p>
                    </div>
                    </a>
                </div>
            <?php
            }
            ?>

        </div>
        <div class="pagination-container d-flex justify-content-center">
            <div class="pagination-box">
                <button class="pagination-button" id="prev-button">&lt;</button>
                <div id="pagination-num">
                </div>
                <button class="pagination-button" id="next-button">&gt;</button>
            </div>
        </div>
    </div>

    <!-- Movies Page End -->

    <!-- bootstrap css1 js1 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    <script src="./script.js" type="text/javascript"></script>
    <script src="./movie.js" type="text/javascript"></script>

</body>

</html>