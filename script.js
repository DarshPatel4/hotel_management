let orderedItems = [];
let totalPrice = 0;

function orderItem(item, price) {
    orderedItems.push({ item: item, price: price });
    totalPrice += price;
    displayOrderSummary();
}

function displayOrderSummary() {
    let orderSummary = `
        <h2>Order Summary</h2>
        <table border='1'>
            <tr>
                <th>Item</th>
                <th>Price (₹)</th>
            </tr>
    `;
    
    orderedItems.forEach(order => {
        orderSummary += `
            <tr>
                <td>${order.item}</td>
                <td>₹${order.price.toFixed(2)}</td>
            </tr>
        `;
    });
    
    orderSummary += `
        <tr>
            <td><strong>Total Price</strong></td>
            <td><strong>₹${totalPrice.toFixed(2)}</strong></td>
        </tr>
        </table>
    `;
    
    document.getElementById('order-summary').innerHTML = orderSummary;
    document.getElementById('order-items').value = JSON.stringify(orderedItems);
    document.getElementById('order-total-price').value = totalPrice.toFixed(2);
}
