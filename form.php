<?php
$base = mysqli_connect('localhost', 'root', '', 'form');

if(isset($_POST['submit'])){ // Note the corrected quotes around 'submit'
    
    $roll=$_POST['roll'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    
    
    $sql = "INSERT INTO form(roll,name, email) VALUES ('$roll','$name', '$email')"; // Corrected SQL syntax
    
    if(mysqli_query($base, $sql)){ // Changed from `mysql_query` to `mysqli_query`
        echo "Inserted successfully";
    }
    else{
        echo "Insertion failed: " . mysqli_error($base); // Added error message for debugging
    }
}

mysqli_close($base); // Close the connection after use
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HTML Form</title>
     <style>
        body {
                    font-family: Arial, sans-serif;
                    margin: 0;
                    padding: 20px;
                    background-color: #f4f4f4;
                    }

                h1 {
                    color: #333;
                }

                form {
                    max-width: 400px;
                    margin: 0 auto;
                    background-color: #fff;
                    padding: 20px;
                    border-radius: 8px;
                    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                }

                label, input, button {
                    display: block;
                    margin-bottom: 10px;
                }

                input, button {
                    width: 100%;
                    padding: 10px;
                    font-size: 16px;
                }
                button {
                    width: 100%;
                    padding: 10px;
                    font-size: 16px;
                }

                button {
                    background-color: #007bff;
                    color: #fff;
                    border: none;
                    cursor: pointer;
                }

                button:hover {
                    background-color: #0056b3;
                }

     </style>

</head>
<body>
    <h1>The form for collecting information and keeping it into database</h1>
    <form action="form.php" method="POST" >
        <label for="roll">Roll NO:</label>
        <input type="number" id="roll" name="roll"  required> <br>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name"  ><br>
         <label for="emai">Email:</label>
         <input type="email" id="email" name="email" ><br>
         <button type="submit" name="submit" value="submit" >submit</button>

    </form>
</body>
</html>