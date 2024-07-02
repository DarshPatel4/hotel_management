<?php include 'db.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Menu</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Hotel Menu</h1>
    <?php
    $categories = [];
    $sql = "SELECT DISTINCT category FROM menu";
    $result = $conn->query($sql);
    while ($row = $result->fetch_assoc()) {
        $categories[] = $row['category'];
    }

    foreach ($categories as $category) {
        echo "<h2>$category</h2>";
        echo "<table border='1'>";
        echo "<tr><th>Item</th><th>Price (₹)</th><th>Order</th></tr>";

        $sql = "SELECT * FROM menu WHERE category='$category'";
        $result = $conn->query($sql);
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['item'] . "</td>";
            echo "<td>" . $row['price'] . "</td>";
            echo "<td><button onclick='orderItem(\"" . $row['item'] . "\", " . $row['price'] . ")'>Order</button></td>";
            echo "</tr>";
        }
        echo "</table>";
    }

    // Fetching all items and prices to use in JavaScript
    $priceList = [];
    $sql = "SELECT item, price FROM menu";
    $result = $conn->query($sql);
    while ($row = $result->fetch_assoc()) {
        $priceList[$row['item']] = $row['price'];
    }
    $conn->close();
    ?>
    <h1>Your Order</h1>
    <div id="order-summary"></div>
    <form action="process_order.php" method="post">
        <input type="hidden" name="items" id="order-items">
        <input type="hidden" name="total_price" id="order-total-price">
        <input type="submit" value="Place Order">
    </form>
    <script>
        let priceList = <?php echo json_encode($priceList); ?>;
    </script>
    <script src="script.js"></script>
</body>
</html>
