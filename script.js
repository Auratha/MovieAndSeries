let seriesData = [
    {
        seriesName:"Lupin",
        season: 1,
        imgURL: "http://drive.google.com/uc?export=view&id=1dNBIx6XGUkTgWVMb13g2n9kzh9OedqN9",
        rating: "8.5"
    },
    {
        seriesName:"Breaking Bad",
        season: 2,
        imgURL: "https://drive.google.com/uc?export=view&id=1CrEWmLLcOUW0SkqoIKZe55bALqiRzOXz",
        rating: "9.0"
    },
    {
        seriesName:"Peaky Blinder",
        season: 5,
        imgURL: "https://drive.google.com/uc?export=view&id=1dNAC6ftFn1NybvspxC75vKeEUsQ-j0rT",
        rating: "8.5"
    },
    {
        seriesName:"The Last Kingdom",
        season: 3,
        imgURL: "https://drive.google.com/uc?export=view&id=1fQLvecRI05pAHiv4jAmSo31RX5eLIKwL",
        rating: "7.0"
    },
    {
        seriesName:"Sandman",
        season: 1,
        imgURL: "https://drive.google.com/uc?export=view&id=1SS9jJsilLPtG3UUhSkfr3ZpgW2MrrVGT",
        rating: "9.9"
    },
    {
        seriesName:"The Umbrella Academy",
        season: 3,
        imgURL: "https://drive.google.com/uc?export=view&id=1NS2dVUP4tguHLI86NJaFK4c2vaAhPGWa",
        rating: "7.5"
    },
    {
        seriesName:"Stranger Things",
        season: 4,
        imgURL: "https://drive.google.com/uc?export=view&id=1x2miIDYEHQ32gubEUKshaOvVIPgRNauZ",
        rating: "9.5"
    },
    {
        seriesName:"Money Heist",
        season: 1,
        imgURL: "https://drive.google.com/uc?export=view&id=1jdcHdTyNK-NlMcaHjdY65Uy0XkCURy0Z",
        rating: "9.1"
    },
    {
        seriesName:"Better Call Saul",
        season: 1,
        imgURL: "https://drive.google.com/uc?export=view&id=1NFkwBB0v6RETKwI4p-HD1f-PbprKs6Z2",
        rating: "8.5"
    },
    {
        seriesName:"Kung Fu Panda : The Dargon Knight",
        season: 1,
        imgURL: "https://drive.google.com/uc?export=view&id=15WQExTpx6rpSB4_B3r8wK9kzlFOfqtjA",
        rating: "7.5"
    },
    {
        seriesName:"Lucifer",
        season: 4,
        imgURL: "https://drive.google.com/uc?export=view&id=1HrkCwkXiFtlLUSrbU3UxNhWzePVX4Dvr",
        rating: "7.5"
    },
    {
        seriesName:"Spy X Family",
        season: 1,
        imgURL: "https://drive.google.com/uc?export=view&id=19dg9VScAtL6ZGjdncT6R6GSaP9AL0f5m",
        rating: "7.5"
    },
    {
        seriesName:"The Witcher",
        season: 1,
        imgURL: "https://drive.google.com/uc?export=view&id=1cTqUiSWXhKBFVV8GdD79LSNcNCPc0o7W",
        rating: "7.5"
    },
    {
        seriesName:"Alice In Borderland",
        season: 1,
        imgURL: "https://drive.google.com/uc?export=view&id=1t1H_avZVgNkvZDi0wjkETJxU2GIkNgHb",
        rating: "7.5"
    },
    {
        seriesName:"Dark",
        season: 1,
        imgURL: "https://drive.google.com/uc?export=view&id=1TZn5tljOv0bhT-RNJycO8iBpfp77pKXm",
        rating: "7.5"
    },
    {
        seriesName:"Cobra Kai",
        season: 1,
        imgURL: "https://drive.google.com/uc?export=view&id=1jx3w_uminRW7dNWRKas6vjIRuXNzYaPN",
        rating: "7.5"
    },
    {
        seriesName:"Arcane",
        season: 1,
        imgURL: "https://drive.google.com/uc?export=view&id=1UMXPMr97BGnn9A_GS8cSQ4SogOTL_gpn",
        rating: "7.5"
    },
    {
        seriesName:"The 100",
        season: 1,
        imgURL: "https://drive.google.com/uc?export=view&id=124FJbrHse6nPjJIUoBz2zCnVLahISHTh",
        rating: "7.5"
    },
]


// Navbar Section Start
$(document).ready(()=>{

    $('.search-icon').click(()=>{
        $('.search-input').toggleClass('active');
    })
})

// Movie And Series Session Start
$(document).ready(()=>{
    let movieItem = '<div class="col-2">'+
                        '<div class="movie-item">'+
                            '<div class="photo-box">'+
                                '<img src="https://m.media-amazon.com/images/I/71niXI3lxlL.jpg" width="100%" height="100%">'+
                                '<div class="star-box">'+
                                '<i class="fa-solid fa-star text-warning"></i>'+
                                '<span>5.9</span>'+
                            '</div>'+
                            '<div class="hover-play-box">'+
                                '<i class="fa-regular fa-circle-play"></i>'+
                            '</div>'+
                            '</div>'+
                            '<p class="text-center">Avengers:End Game</p>'+
                        '</div>'+
                    '</div>';
    
    let i=0;
    while(i<18){
        $(".movies-box").append(movieItem);
       
        i++;
    }
    $("#movies-page").children().attr('id','movie-pagination-item');
    

    let counter=0;
    while(counter<seriesData.length){
        $(".series-box").append('<div class="col-2">'+
        '<div class="serie-item">'+
            '<div class="photo-box">'+
                '<img src="'+seriesData[counter].imgURL+'" width="100%" height="100%">'+
                '<div class="star-box">'+
                    '<i class="fa-solid fa-star text-warning"></i>'+
                    '<span>'+seriesData[counter].rating+'</span>'+
                '</div>'+
                '<div class="hover-play-box">'+
                    '<i class="fa-regular fa-circle-play"></i>'+
                '</div>'+
                '<div class="season-box"><p>S'+seriesData[counter].season+'</p></div>'+
            '</div>'+
            '<p class="text-center">'+seriesData[counter].seriesName+'</p>'+
        '</div>'+
    '</div>');
        counter++
    }
    $("#series-page").children().attr('id','serie-pagination-item');

    

});
