<?php include 'db.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Confirmation</title>
    <link rel="stylesheet" href="process_order.css">
</head>
<body>
    <div class="container">
        <h1>Order Confirmation</h1>
        <?php
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $items = json_decode($_POST['items'], true);
            $total_price = $_POST['total_price'];

            $itemNames = array_map(function($item) {
                return $item['item'];
            }, $items);
            
            $itemList = implode(", ", $itemNames);

            $sql = "INSERT INTO orders (items, total_price) VALUES ('$itemList', '$total_price')";

            if ($conn->query($sql) === TRUE) {
                $order_id = $conn->insert_id;
                echo "<div class='bill-details'>";
                echo "<p><strong>Order Number:</strong> " . $order_id . "</p>";
                echo "<p><strong>Items Ordered:</strong> " . $itemList . "</p>";
                echo "<p><strong>Total Price:</strong> ₹" . $total_price . "</p>";
                echo "</div>";
                echo "<p class='thank-you-message'>Thank you for your order!</p>";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }

            $conn->close();
        }
        ?>
    </div>
</body>
</html>
