<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="apple-touch-icon" sizes="180x180" href="/images/chi-logo.png">
        <link rel="icon" type="image/png" href="/images/favicon.png">
        <meta name="msapplication-TileColor" content="#da532c">
        <meta name="theme-color" content="#ffffff">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- <script src="https://kit.fontawesome.com/a076d05399.js"></script> -->

        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title> {{$title}} </title>

        <!-- SEO -->
        <meta name="keywords" content="">
        <meta name="author" content="CHI Logistics Inc">
        <meta name="publisher" content="Safely transporting products through all 48 states">
        <meta name="Description" content="Safely transporting products through all 48 states">
        <meta name="image_src" content="/images/chi-logo.png">
        <meta name="image_url" content="/images/chi-logo.png">

        <!-- Facebook Open Graph -->
        <meta property="og:locale" content="en_EN">
        <meta property="og:type" content="website">
        <meta property="og:title" content="CHI Logistics Inc">
        <meta property="og:url" content="www.chilogisticsinc.com">
        <meta property="og:description" content="Safely transporting products through all 48 states">
        <meta property="og:image" content="/images/chi-logo.png">
        <meta property="og:site_name" content="CHI Logistics Inc">

        <!-- Twitter Cards -->
        <meta name="twitter:title" content="CHI Logistics Inc">
        <meta name="twitter:url" content="www.chilogisticsinc.com">
        <meta name="twitter:description" content="Safely transporting products through all 48 states">
        <meta name="twitter:image" content="/images/chi-logo.png">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <!--Google fonts-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Philosopher:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        
        <link href="/css/lightbox.min.css" rel="stylesheet">
        <link href="/css/main.css" rel="stylesheet">
        <script src="/js/lightbox-plus-jquery.min.js"></script>

      </head>
    <body>
        @include('header.header')
        @yield('main')
        @include('footer.footer')

        <button onclick="gotop()" id="top" class="fa fa-chevron-up"></button>
                
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="/js/main.js"></script>

        <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <!--Bootstrap-->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
            <script src="https://kit.fontawesome.com/6e3f060249.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
        <!--Counter UP-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
    </body>
</html>