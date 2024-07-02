<?php include 'db.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Your Order</h1>
    <div id="order-summary"></div>
    <form action="process_order.php" method="post">
        <input type="hidden" name="items" id="order-items">
        <input type="hidden" name="total_price" id="order-total-price">
        <input type="submit" value="Place Order">
    </form>
    <script src="script.js"></script>
</body>
</html>
