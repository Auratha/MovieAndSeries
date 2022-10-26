<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movieandseries</title>
    <?php include('link.php')?>
</head>

<body>

    <!-- Calling Navbar HERE -->
    <?php include('navbar.php') ?>

    <!-- Movies Page Start -->
    <div class="container my-5">
        <h1>Series</h1>
        <div class="row series-box" id="series-page">


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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
        integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
        crossorigin="anonymous"></script>
    <script src="./script.js" type="text/javascript"></script>
    <script src="./series.js" type="text/javascript"></script>

</body>

</html>