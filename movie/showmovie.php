<?php 
include('../db.php');

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
    <!-- fontawesome css1  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- bootstrap css1 js1 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- jquery js1 -->
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

    <link href="../style.css" rel="stylesheet" type="text/css">

</head>

<body>

    <!-- Calling Navbar HERE -->
    <!-- Navbar Section Start -->
    <nav class="navbar navbar-expand-md bg-light">
        <div class="container-fluid">
            <a class="navbar-brand ms-5" href="#"><img src="../img/logo.png" alt="website logo" width="120px" height="40px"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto ms-5 mb-2 mb-lg-0">
                    <li class="nav-item mx-3">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item mx-3">
                        <a class="nav-link" href="#">Series</a>
                    </li>
                    <li class="nav-item mx-3">
                        <a class="nav-link" href="#">Movies</a>
                    </li>
                </ul>
                <form class="d-flex align-items-center me-5" role="search">
                    <input type="text" class="search-input" placeholder="Search...">
                    <i class="fa-sharp fa-solid fa-magnifying-glass search-icon"></i>
                </form>
            </div>
        </div>
    </nav>
    <!-- Navbar Section End -->

    <div class="container mt-5">
        <div class="col-12 video-box">
            <h1><?php echo $movie['movie_name'] ?></h1>
            <IFRAME class="mt-3" SRC="https://sbanh.com/e/wub5mbsw4hym.html" FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO WIDTH=100% height="600px" allowfullscreen></IFRAME>
        </div>
    </div>

    <div class="container mt-5">
        <h1>Information</h1>
        <div class="row bg-light rounded-5 p-5">
            <div class="col-4">
                <img class="showing-photo rounded-3" src="<?php echo $movie['movie_img'] ?>" width="100%">
                <p class="info-text"><b>Rating :</b> <i class="fa-solid fa-star text-warning"></i> <?php echo $movie['movie_rating'] ?></p>
                <p class="info-text"><b>Genre :</b> <?php echo $movie['genre']?></p>
                <p class="info-text"><b>Runtime :</b> <?php echo $movie['movie_runtime']?></p>
                <p class="info-text"><b>Release Year :</b> <?php echo $movie['movie_release_year'] ?></p>
                <p class="info-text"><b>Collection :</b> <?php echo $movie['collection']?></p>

            </div>
            <div class="col-8">
                <h3>Marvel Cinematic Universe Intro</h3>
                <p>Marvel ထုတ်လုပ်ရေးမှ Marvel Cinematic Universe(MCU) ကို လွန်ခဲ့တဲ့ ၁၀ နှစ်က စပြီးတည်ဆောက်ခဲ့ပါတယ်။
                    ပထမဆုံး ဇာတ်လမ်းဖြစ်တဲ့ Iron Man-1 နဲ့ဖြစ်ပါတယ်။ နောက်ဆုံးအပိတ်ကတော့ Endgame (2019) ဖြစ်ပါတယ်။Marvel Universe မှာ Infinity Stone လို့ ခေါ်တဲ့ စွမ်းအား အကြီးဆုံး ကျောက်တုံး(၆) လုံးရှိပါတယ်။
                    အဲဒီကျောက်တုံးတွေဟာ စကြဝဠာအနှံ့မှာ ပြန့်ကျဲနေတယ် ဆိုပါတော့။
                    ကျောက်တုံးတစ်တုံးချင်းစီမှာ သီးခြားအစွမ်းတွေ ရှိပြီး သာမာန်လူတွေ ကိုင်တွယ်သုံးစွဲဖို့ မဖြစ်နိုင်သလောက်ပါပဲ။
                    Infinity War ရဲ့ အဓိက ဗီလိန်ဖြစ်တဲ့ Mad titan လို့ခေါ်ကြတဲ့ Thanos က ဒီကျောက်တုံးတွေကို စုစည်းပြီး
                    စကြဝဠာကို သူ့သဘောအတိုင်းဖန်တီးဖို့ကြိုးစားပါလိမ့်မယ်။
                    ဒါကို Avengers( Captain America, Iron Man, Hulk, Thor, Black Widow, Hawkeye, Vision,Scarlet Witch,Antman,Falcon) တို့နဲ့
                    Spiderman, Doctor Strange, Black Panther, Guardians of the Galaxy အဖွဲ့တို့ ပူးပေါင်းတားဆီးကြရင်း ဖြစ်လာတဲ့ စစ်ပွဲပါ။Infinity Stones 6 လုံးရဲ့ တည်နေရာတွေကတော့၁. Space Stone aka Tesseract (Blue)
                    (Captain America: the first avenger ဇာတ်ကားမှာ နာဇီတွေဆီက လုယူရတဲ့ ကျောက်တုံးဖြစ်ပြီး
                    Avengers ဇာတ်ကားမှာ လိုကီက ဂြိုလ်သားတွေကို ကမ္ဘာကိုခေါ်ဖို့ ဝင်ပေါက်ဖွင့်တဲ့နေရာမှာ အသုံးပြုခဲ့ပါတယ်၊
                    လက်ရှိကတော့ Asgard ဂြိုလ်ပေါ်မှာ သိမ်းဆည်းခဲ့ရင်း Thor: Ragnarok ကားအဆုံးမှာ လိုကီ ခိုးယူခဲ့တာကို တွေ့ရမှာပါ)၂။ Reality Stone aka Aether (Red)
                    ( စကြဝဠာကို Big Bang မတိုင်ခင်အထိတောင် ပြန်ပြောင်းပစ်နိုင်ပါတယ်။
                    Thor 2: The Dark World မှာ ပါလာခဲ့ပြီး နောက်ဆုံး credit scene မှာ Collector ဆိုသူဆီမှာ သိမ်းဆည်းထားပါတယ်)၃။ Power Stone (Purple Orb)
                    ( ဂြိုလ်တစ်ခုလုံးကို အသာလေးဖျက်ပစ်လို့ရတဲ့ raw power တွေပါပါတယ်။
                    Guardian of the Galaxy 1 မှာ ပါဝင်ခဲ့ပြီး Xander က Nova Corps စစ်တပ်လက်ထဲမှာ သိမ်းဆည်းထားပါတယ်။)၄။ The Time Stone ( The Eye of Agomotto, Green)
                    ( အချိန်ကို လိုသလိုအသုံးချနိုင်ပါတယ်။ Doctor Starnge ဇာတ်လမ်းမှာ ပါဝင်လာပြီး လက်ရှိ ဒေါက်တာ စထ်ရိန့်က စောင့်ရှောက်ထားပါတယ်)၅။ Mind Stone (Yellow)
                    ( ဉာဏ်ရည်ကို မြှင့်တင်ခြင်းနဲ့ စိတ်ညို့ခြင်းတွေ ပြုလုပ်နိုင်ပါတယ်။ Avengers 1 မှာ ပါဝင်ခဲ့ပြီး လက်ရှိ Vision ရဲ့ နဖူးထဲမှာ မြှပ်ထားတာပါ)၆။ Soul Stone (Orange)
                    ( သက်ရှိ သက်မဲ့ အခြေအနေတွေကို ထိန်းချုပ်နိုင်ပါတယ်။ Planet Vormir မှာရှိပါတယ်။ )အဆိုပါ ကျောက်တုံး ၆ တုံးကို သုံးနိုင်ဖို့ Infinity Gauntlet ဆိုတဲ့ လက်အိတ်ကို လိုပါတယ်။ အဲဒီလက်အိတ်ကိုတော့ Thanos ပိုင်ဆိုင်ထားပါတယ်။
                    ဒီလောက်ဆို Marvel Universe ကိုကြည့်ဖို့ အကြမ်းဖျဉ်းလုံလောက်ပြီ ထင်ပါတယ်။</p>
            </div>
        </div>
    </div>

    <!-- bootstrap css1 js1 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    <script src="../script.js" type="text/javascript"></script>
</body>

</html>