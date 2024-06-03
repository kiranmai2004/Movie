<!DOCTYPE html>
<html lang="en">

<head>
    <!--Meta Data-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--Title-->
    <title>Display movies</title>

    <!--CSS and JavaScript-->
    <link rel="stylesheet" type="text/css" href="style.css" />
    <script src="script.js"></script>

    <!--Google Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;800&display=swap" rel="stylesheet">

    <!--Font Awesome Icons-->
    <script src="https://kit.fontawesome.com/d5635d350d.js" crossorigin="anonymous"></script>
</head>

<body onload="singleMovie()">
    <!--Header Bar-->
    <div class="header">
        <div class="header-container">
            <div>
                <h2>Movie Details</h1>
            </div>
            <div class="header-link">
                <span><a href="customerhome"><i class="fa-solid fa-house" style="color: #f6f7f8;"></i> Back to Home</a></span>
            </div>
             <div class="header-link">
                <span><a href="fav"><i class="fa-solid fa-clapperboard" style="color: #f7f7f8;"></i>  Watchlist</a></span>
            </div>
        </div>
        <div class="search-box">
            <input type="text" placeholder="Type movie name here...">
            <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
        </div>
    </div>
    <!--Main Content Container-->
    <div class="main">
        <div class="movie-container">
            <!-- Movie details are displayed here-->
        </div>
    </div>
</body>

</html>