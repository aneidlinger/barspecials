<?php
require 'includes/config.php';
require 'models/all_bars_model.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.0/css/all.css"
        integrity="sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y" crossorigin="anonymous">
    <link rel="stylesheet" href="css/styles.css">

    <title>CIS282 | Final Project</title>


</head>

<body>
    <!-- Navbar Container -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <a class="navbar-brand" href="index.php">Drink Specials</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Navbar Content -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="specials.php?day=Monday">Monday</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="specials.php?day=Tuesday">Tuesday</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="specials.php?day=Wednesday">Wednesday</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="specials.php?day=Thursday">Thursday</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="specials.php?day=Friday">Friday</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="specials.php?day=Saturday">Saturday</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="specials.php?day=Sunday">Sunday</a>
                    </li>
                </ul>
                <!-- Search Bar -->
                <form class="form-inline my-2 my-lg-0" action="search.php" method="POST">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" name="search"
                        aria-label="Search">
                    <button class="btn btn-info my-2 my-sm-0" type="submit" name="submit" value="Search">Search</button>
                </form>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <?php
// var_dump($result);
// var_dump($barList);
if ($result):
    if (mysqli_num_rows($result) > 0):
        while ($bar = mysqli_fetch_assoc($result)):
            // print_r($bar);

            // var_dump($bar);
            ?>
            <div class="col-md-4 col-sm-6 my-5">

                <div class="products d-flex flex-column justify-content-between h-100">

                    <!-- <iframe class="img-fluid border border-warning rounded-lg" src="<?php echo $bar['website']; ?>"
															                            frameborder="0"></iframe> -->
                    <a href="bar.php?bar_id=<?php echo $bar['bar_id']; ?>">
                        <div class="d-flex flex-column justify-content-between flex-fill">
                            <h4 class="text-info"><?php echo $bar['bar_name']; ?></h4>
                            <h4 class="text-info"><?php echo $bar['neighborhood_name']; ?></h4>
                        </div>
                        <!-- <div class="row mx-n1">
																																																												                        </div> -->
                    </a>
                </div>
            </div>
            <?php
        endwhile;
    endif;
endif;
?>
        </div>



    </div>




    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>


</html>