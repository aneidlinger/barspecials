<?php
require 'includes/config.php';
require 'models/bar_model.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/styles.css">

    <?php
if ($result):
    if (mysqli_num_rows($result) > 0):
        while ($bar = mysqli_fetch_assoc($result)):
            //print_r($product);
            ?>
    <title>CIS 282 Final | <?php echo $bar['bar_name']; ?></title>


</head>

<body>


    <div class="container">
        <div class="row mt-5">
            <div class="col-12">
                <h2><?php echo $bar['bar_name']; ?></h2>
            </div>
        </div>

        <div class="row mb-3">

            <div class="col-5">
                <img src="img/<?php echo $bar['img_file']; ?>"
                    class="img-fluid border border-warning rounded-lg mb-3" />
            </div>

            <div class="col-7">
                <h4 class="price text-info"><?php echo $bar['bar_name']; ?></h4>
                <h5 class="text-info"><?php echo $bar['address']; ?></h5>
                <h5 class="text-info"><?php echo $bar['neighborhood_name']; ?></h5>
                <h5 class="text-info"><?php echo $bar['city']; ?>, <?php echo $bar['state']; ?></h5>
                <h5 class="text-info"><?php echo $bar['phone']; ?></h5>
                <h5 class="text-info"><?php echo $bar['website']; ?></h5>
            </div>

        </div>

        <a href="index.php">Go Back</a>
        <?php
        endwhile;
    endif;
endif;
?>
    </div>








    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>


</html>