<?php
    include('db.php');
?>
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

        <!-- Most Popular Slide Section Start -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-9 mx-auto mt-5">
                    <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-bs-ride="carousel">
                        <div class="carousel-inner rounded-5">                          
                          <div class="carousel-item active" data-bs-interval=3000>
                            <div class="shadow-layer"></div>
                            <div class="info-box">
                                <p class="name">Lupin</p>
                                <p class="season">Season 1</p>
                                <a class="watch-now-btn"><i class="fa-solid fa-circle-play"></i>Watch Now</a>
                            </div>
                            <img src="https://filmdaily.co/wp-content/uploads/2021/01/lupin-lede.jpg" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item" data-bs-interval=3000>
                            <div class="shadow-layer"></div>
                            <img src="https://emi9d8rzue7.exactdn.com/wp-content/uploads/2021/07/ADE40954-8EEF-45E3-924B-2E5FAF2BF993-scaled.jpeg?strip=all&lossy=1&ssl=1" class="d-block w-100" alt="...">
                            <div class="info-box">
                                <p class="name">Walking Dead</p>
                                <p class="season">Season 1</p>
                                <a class="watch-now-btn"><i class="fa-solid fa-circle-play"></i>Watch Now</a>
                            </div>
                          </div>
                          <div class="carousel-item" data-bs-interval=3000>
                            <div class="shadow-layer"></div>
                            <img src="https://i.ytimg.com/vi/ceqOTZnhgY8/maxresdefault.jpg" class="d-block w-100" alt="...">
                            <div class="info-box">
                                <p class="name">Breaking Bad</p>
                                <p class="season">Season 1</p>
                                <a class="watch-now-btn"><i class="fa-solid fa-circle-play"></i>Watch Now</a>
                            </div>
                          </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Most Popular Slide Section End -->

        <!-- Movie Session Start -->
        <div class="container my-5">
            <h1>Movies</h1>
                <div class="row movies-box">
                    <?php
                        $moviesql = "SELECT * FROM movie_card_info LIMIT 18";
                        $moviequery = mysqli_query($conn,$moviesql);
                        while($movie = mysqli_fetch_assoc($moviequery)){ 
                    ?>
                        <div class="col-2">
                        <a href="./showmovie.php?id=<?php echo $movie['id'] ?>" style="text-decoration:none; color:#000">
                            <div class="movie-item">
                                <div class="photo-box">
                                    <img src="<?php echo $movie['movie_img'] ?>" width="100%" height="100%">
                                    <div class="star-box">
                                        <i class="fa-solid fa-star text-warning"></i>
                                        <span><?php echo $movie['movie_rating']?></span>
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
                    <!-- <div class="col-2">
                        <div class="movie-item">
                        <div class="photo-box">
                            <img src="https://m.media-amazon.com/images/I/71niXI3lxlL.jpg" width="100%" height="100%">
                            <div class="star-box">
                                <i class="fa-solid fa-star text-warning"></i>
                                <span>5.9</span>
                            </div>
                            <div class="hover-play-box">
                                <i class="fa-regular fa-circle-play"></i>
                            </div>
                        </div>
                        <p class="text-center">Avengers:End Game</p>
                    </div>
                    </div> -->
                   
                </div>
                <div class="see-more-box">
                    <hr>
                    <a href="./movies.php" class="see-more-btn">See More</a>
                </div>
                
        </div>
        <!-- Movie Session End -->

        <!-- Series Session Start -->
        <div class="container my-5">
            <h1>Series</h1>
            <div class="row series-box">
                <!-- <div class="col-2">
                    <div class="serie-item">
                        <div class="photo-box">
                            <img src="https://m.media-amazon.com/images/I/71niXI3lxlL.jpg" width="100%" height="100%">
                            <div class="star-box">
                                <i class="fa-solid fa-star text-warning"></i>
                                <span>5.9</span>
                            </div>
                        <div class="hover-play-box">
                            <i class="fa-regular fa-circle-play"></i>
                        </div>
                    </div>
                    <p class="text-center">Avengers:End Game</p>
                    </div>
                </div> -->
            </div>
            <div class="see-more-box">
                <hr>
                <a href="./series.php" class="see-more-btn">See More</a>
            </div>

        </div>
        <!-- Series Session End -->       
        


        <!-- bootstrap css1 js1 -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
        <script src="./script.js" type="text/javascript"></script>
    </body>
</html>