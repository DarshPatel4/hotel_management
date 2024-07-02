<?php include 'db.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rate Us</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Rate Our Hotel</h1>
    <form action="submit_rating.php" method="post">
        <label for="rating">Rating (1 to 5):</label>
        <input type="number" name="rating" id="rating" min="1" max="5" required>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
