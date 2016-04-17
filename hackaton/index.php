<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Snack Time</title>
    <style type="text/css">
    #header {
        background-color: #444;
        background: url(images/background.jpg) no-repeat center top;
        margin-top: -20px;
        padding-top: 150px;
        background-attachment: relative;
        background-position: center center;
        min-height: 650px;
        width: 100%;
        -webkit-background-size: 100%;
        -moz-background-size: 100%;
        -o-background-size: 100%;
        background-size: 100%;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
    }
    
    #header h1 {
        margin-top: 60px;
        margin-bottom: 15px;
        color: #fff;
        font-size: 45px;
        font-weight: 900;
        letter-spacing: -1px;
        margin: 0 auto;
    }
    
    h2.subtitle {
        color: #fff;
        font-size: 20px;
    }
    
    .btn-theme {
        color: #fff;
        background-color: #fd680e;
        border-color: #fd680e;
    }
    
    .btn-theme:hover {
        color: #fff;
        background-color: #444;
        border-color: #444;
    }
    
    #headerBox {
        position: absolute;
        left: 35%;
    }
    </style>
</head>

<body>
    <?php include 'header.php'; ?>
    <div id="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-6" id="headerBox">
                    <h1>Simple landing page</h1>
                    <h2 class="subtitle">No need huge slogan, we believe in less is better</h2>
                    <form class="form-inline signup" role="form">
                        <div class="form-group">
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-theme">Get it now</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- #Header Starts -->
    <!-- works -->
    <div id="works" class=" clearfix grid">
        <figure class="effect-oscar  wowload fadeIn">
            <img src="images/portfolio/1.jpg" alt="img01" />
            <figcaption>
                <h2>Nature</h2>
                <p>Lily likes to play with crayons and pencils
                    <br>
                    <a href="images/portfolio/1.jpg" title="1" data-gallery>View more</a></p>
            </figcaption>
        </figure>
        <figure class="effect-oscar  wowload fadeInUp">
            <img src="images/portfolio/2.jpg" alt="img01" />
            <figcaption>
                <h2>Events</h2>
                <p>Lily likes to play with crayons and pencils
                    <br>
                    <a href="images/portfolio/2.jpg" title="1" data-gallery>View more</a></p>
            </figcaption>
        </figure>
        <figure class="effect-oscar  wowload fadeInUp">
            <img src="images/portfolio/3.jpg" alt="img01" />
            <figcaption>
                <h2>music</h2>
                <p>Lily likes to play with crayons and pencils
                    <br>
                    <a href="images/portfolio/3.jpg" title="1" data-gallery>View more</a></p>
            </figcaption>
        </figure>
        <figure class="effect-oscar  wowload fadeInUp">
            <img src="images/portfolio/4.jpg" alt="img01" />
            <figcaption>
                <h2>Vintage</h2>
                <p>Lily likes to play with crayons and pencils
                    <br>
                    <a href="images/portfolio/4.jpg" title="1" data-gallery>View more</a></p>
            </figcaption>
        </figure>
        <figure class="effect-oscar  wowload fadeInUp">
            <img src="images/portfolio/5.jpg" alt="img01" />
            <figcaption>
                <h2>Typers</h2>
                <p>Lily likes to play with crayons and pencils
                    <br>
                    <a href="images/portfolio/5.jpg" title="1" data-gallery>View more</a></p>
            </figcaption>
        </figure>
        <figure class="effect-oscar  wowload fadeInUp">
            <img src="images/portfolio/6.jpg" alt="img01" />
            <figcaption>
                <h2>hotel</h2>
                <p>Lily likes to play with crayons and pencils
                    <br>
                    <a href="images/portfolio/6.jpg" title="1" data-gallery>View more</a></p>
            </figcaption>
        </figure>
    </div>
    <!-- works -->
    <!-- About Starts -->
    <div class="highlight-info">
        <div class="overlay spacer">
            <div class="container">
                <div class="row text-center  wowload fadeInDownBig">
                    <div class="col-sm-3 col-xs-6">
                        <i class="fa fa-smile-o  fa-5x"></i>
                        <h4>24 Clients</h4>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <i class="fa fa-rocket  fa-5x"></i>
                        <h4>75 Projects</h4>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <i class="fa fa-cloud-download  fa-5x"></i>
                        <h4>454 Downloads</h4>
                    </div>
                    <div class="col-sm-3 col-xs-6">
                        <i class="fa fa-map-marker fa-5x"></i>
                        <h4>2 Offices</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About Ends -->
    </div>
    <?php include 'footer.php'; ?>
</body>

</html>
