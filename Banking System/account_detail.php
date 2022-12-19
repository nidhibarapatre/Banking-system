<center>
            <?php
        include('conn.php');
        if (isset($_GET['uid'])) {
            $result = $_GET['uid'];
            $sqli = "SELECT customer_name, customer_street,customer_city
    FROM customer 
    WHERE customer_name='$result'";
            $res1 = mysqli_query($conn, $sqli);
            $result1 = mysqli_fetch_assoc($res1);
            echo "Customer Name  : ";
            echo $result1['customer_name'] . '<br>' . '<br>';

            echo "Address  : ";
            echo $result1['customer_street'] . '<br>' . '<br>';

            echo "City : ";
            echo $result1['customer_city'] . '<br>'. '<br>';
        }
        ?>
        </center>