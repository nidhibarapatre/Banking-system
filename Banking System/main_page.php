<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SBI Bank</title>
    <style>
        #logo {
            width: 128px;
            height: 92px;
            border: 2px solid black;
        }

        .heading {
            display: inline-block;
            position: absolute;
            margin-left: 406px;
            font-size: 18px;
        }

        table {
            margin-right: 50px;
            float: right;
            margin-top: 100px;
            font-size: 19px;
            margin-right: 112px;
        }

        th {
            padding: 10px;
        }

        
        h2 {
            top: 140px;
            position: absolute;
            margin-left: 666px;
        }

        form {
            display: inline-block;

            top: 275px;
            margin-left: 500px;
            position: absolute;
        }
        button{
            margin-left: 78px;

        }
        /*#dep{
            position:absolute;
            top:350px;
            margin-left:450px;

        }
        #bor{
            position:absolute;
            top:350px;
            margin-left:250px;
        }*/

        
    

        
    </style>
</head>

<body>
    <img id="logo" src="https://www.wordzz.com/wp-content/uploads/2016/10/sbi.jpg" alt="Image not found">
    <span class="heading">
        <h1>STATE BANK OF INDIA</h1>
    </span>
    <table>
        <tr>
            <th>
                <a href="bankmain.html">HOME</a>
            </th>
            <th>
                |
            </th>
            <th>
                ABOUT US
            </th>
            <th>
                |
            </th>
            <th>
                LOGIN
            </th>
        </tr>
    </table>
    <center><h2>Dashboard</center>
  
  
<?php
include('conn.php');
$sql="select customer_name, depositor.ACCOUNT_NUMBER, balance from 
depositor inner join account on depositor.ACCOUNT_NUMBER= 
account.account_number";
$res=mysqli_query($conn, $sql);
echo '<table border="1"><tr><th>Name</th><th>A/C No.</th><th> 
Balance</th><th>Details</th></tr>';
while($result=mysqli_fetch_assoc($res))
{
echo '<tr><td>'. $result['customer_name'] . '</td><td>'. 
$result['ACCOUNT_NUMBER'] . '</td><td>' . $result['balance'] . '</td><td>
<a href="account_detail.php?uid=' . $result['customer_name'] . ' ">View Details</a></td></tr>';
}
echo '</table>';
?>
<?php
           
        include('conn.php');
        $sql="select customer_name,account.account_number, balance from
        borrower, loan ,account where borrower.LOAN_NUMBER=loan.LOAN_NUMBER and loan.branch_name=account.branch_name " ;
        $res=mysqli_query($conn, $sql);
        echo '<table class="php" border="1"><tr><th>Name</th><th>A/C No.</th><th>
        Balance</th><th>Details</th></tr>';
        while($result=mysqli_fetch_assoc($res))
        {
            echo '<tr><td>'. $result['customer_name'] . '</td><td>'.
            $result['account_number'] . '</td><td>' . $result['balance'] . '</td><td><a
            href="account_detail.php?uid=' . $result['customer_name'] . ' ">View
            Details</a></td></tr>';
        }
        echo '</table>';
        
        ?>
        </body>
        </html>
