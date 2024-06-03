<!DOCTYPE html>
<html lang="en">

<head>
    <!--Meta Data-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--Title-->
    <title>Movie Library</title>

    <!--CSS and JavaScript-->
    <link rel="stylesheet" type="text/css" href="style.css" />

    <!--Google Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    


    <!--Font Awesome Icons-->
    <script src="https://kit.fontawesome.com/d5635d350d.js" crossorigin="anonymous"></script>
</head>

<body>
    <!--Header Bar-->
    <div class="header">
        <div class="header-container">
            <div>
                <h1>Search for movies</h1>
            </div>
            <div class="header-link">
                <span><a href="fav">Watchlist</a></span>&emsp;&emsp;
                <span> <a href="customerlogin"> logout</a></span>
            </div>
        </div>
        <div class="search-box">
            <input type="text" placeholder="Type movie name here..." class="search-bar" id="Input">
            <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
        </div>
    </div>
    <!--Main Content Container-->
    <div class="main">
        <!-- Search Items Display Section -->
        <div class="fav-container">
            <!-- Items are displayed here -->
        </div>
        <!-- Start Exploring Section -->
        <div class="start-exploring">
            <i class="bi bi-camera-reels"></i>
            <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="currentColor" class="bi bi-camera-reels" viewBox="0 0 16 16">
			  <path d="M6 3a3 3 0 1 1-6 0 3 3 0 0 1 6 0M1 3a2 2 0 1 0 4 0 2 2 0 0 0-4 0"/>
			  <path d="M9 6h.5a2 2 0 0 1 1.983 1.738l3.11-1.382A1 1 0 0 1 16 7.269v7.462a1 1 0 0 1-1.406.913l-3.111-1.382A2 2 0 0 1 9.5 16H2a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2zm6 8.73V7.27l-3.5 1.555v4.35zM1 8v6a1 1 0 0 0 1 1h7.5a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1"/>
			  <path d="M9 6a3 3 0 1 0 0-6 3 3 0 0 0 0 6M7 3a2 2 0 1 1 4 0 2 2 0 0 1-4 0"/>
			</svg><br>
            <span>Start Searching!</span>
        </div>
    </div>

    <script src="./script.js"></script>
</body>

</html>
