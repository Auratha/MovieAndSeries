<?php 
include('db.php');

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $sql = "SELECT movie_video.*,movie_card_info.* FROM movie_video INNER JOIN movie_card_info ON movie_video.movie_id = movie_card_info.id WHERE movie_video.movie_id = '$id' ";
    $query = mysqli_query($conn,$sql);
    $movie = mysqli_fetch_assoc($query);
}

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

    <div class="container mt-5">
        <div class="col-12 video-box">
            <h1><?php echo $movie['movie_name'] ?></h1>
            <IFRAME class="mt-3" SRC="<?php echo $movie['video_url'] ?>" FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO WIDTH=100% height="600px" allowfullscreen></IFRAME>
        </div>
    </div>

    <div class="container mt-5">
        <h1>Movie Information</h1>
        <div class="row bg-light rounded-5 p-5">
            <div class="col-4">
                <img class="showing-photo rounded-3" src="<?php echo $movie['movie_img'] ?>" width="100%">
                <p class="info-text"><b>Rating :</b> <i class="fa-solid fa-star text-warning"></i> <?php echo $movie['movie_rating'] ?></p>
                <p class="info-text"><b>Genre :</b> <?php echo $movie['genre']?></p>
                <p class="info-text"><b>Runtime :</b> <?php echo $movie['movie_runtime']?></p>
                <p class="info-text"><b>Release Year :</b> <?php echo $movie['movie_release_year'] ?></p>
                <?php if($movie['collection']==="")
                {

                }
                else{ ?>
                <p class="info-text"><b>Collection :</b> <?php echo $movie['collection']?></p>
                <?php }?>
                
            </div>
            <div class="col-8">
                <p><?php echo $movie['video_info'] ?></p>
            </div>
        </div>
    </div>

    <!-- bootstrap css1 js1 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    <script src="./script.js" type="text/javascript"></script>
</body>

</html>