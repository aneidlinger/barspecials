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
        <div class="row mb-5 mt-3">
            <a href="index.php" class="btn btn-danger">Go Back</a>
        </div>
        <div class="row mb-3">
            <div class="col-3">
                <img src="img/<?php echo $bar['logo']; ?>" class="img-fluid border border-warning rounded-lg" />
            </div>

            <div class="col-3 offset-1">
                <h2 class="price text-info"><?php echo $bar['bar_name']; ?></h2>
                <h5><?php echo $bar['address']; ?></h5>
                <h5><?php echo $bar['neighborhood_name']; ?></h5>
                <h5><?php echo $bar['city']; ?>, <?php echo $bar['state']; ?></h5>
                <h5><?php echo $bar['phone']; ?></h5>
                <a href="<?php echo $bar['website']; ?>">
                    <h5><?php echo $bar['website']; ?></h5>
                </a>
            </div>

            <div class="col-4 offset-1">
                <table class="table table-primary table-sm">
                    <thead>
                        <tr class="table-warning">
                            <th colspan="4" scope="col">
                                <h4>Bar Hours</h4>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">Monday: </th>
                            <td><?php echo $bar['mon_open']; ?></td>
                            <td> - </td>
                            <td><?php echo $bar['mon_close']; ?></td>
                        </tr>
                        <tr>
                            <th scope="row">Tuesday: </th>
                            <td><?php echo $bar['tue_open']; ?></td>
                            <td> - </td>
                            <td><?php echo $bar['tue_close']; ?></td>
                        </tr>
                        <tr>
                            <th scope="row">Wednesday: </th>
                            <td><?php echo $bar['wed_open']; ?></td>
                            <td> - </td>
                            <td><?php echo $bar['wed_close']; ?></td>
                        </tr>
                        <tr>
                            <th scope="row">Thursday: </th>
                            <td><?php echo $bar['thu_open']; ?></td>
                            <td> - </td>
                            <td><?php echo $bar['thu_close']; ?></td>
                        </tr>
                        <tr>
                            <th scope="row">Friday: </th>
                            <td><?php echo $bar['fri_open']; ?></td>
                            <td> - </td>
                            <td><?php echo $bar['fri_close']; ?></td>
                        </tr>
                        <tr>
                            <th scope="row">Saturday: </th>
                            <td><?php echo $bar['sat_open']; ?></td>
                            <td> - </td>
                            <td><?php echo $bar['sat_close']; ?></td>
                        </tr>
                        <tr>
                            <th scope="row">Sunday: </th>
                            <td><?php echo $bar['sun_open']; ?></td>
                            <td> - </td>
                            <td><?php echo $bar['sun_close']; ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>



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