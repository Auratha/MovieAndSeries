// Navbar Section Start
$(document).ready(()=>{

    // For search input
    $('.search-icon').click(()=>{
        $('.search-input').toggleClass('active');
    })

    $('.search-input').change(()=>{
        let inputText = $('.search-input').val();
        document.cookie="inputText="+inputText;
        // window.open('search.php');
        window.location.href = "search.php";
    })

    // For nav header 
    let headers = document.querySelectorAll('.nav-link');

    switch($('#filename').val()){
        case 'index.php':
        headers[0].classList.add('active');;
        break;
        case 'movies.php':
        headers[1].classList.add('active');;
        break;
        case 'series.php':
        headers[2].classList.add('active');;
        break;
    }

})

// Movie And Series Session Start
$(document).ready(()=>{
    $("#movies-page").children().attr('id','movie-pagination-item');
    $("#series-page").children().attr('id','serie-pagination-item');
});
