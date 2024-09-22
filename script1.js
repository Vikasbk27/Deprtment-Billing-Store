document.addEventListener('DOMContentLoaded', function () {
    const cartItems = document.getElementById('cart-items');
    const totalPriceElement = document.getElementById('total-price');
    const printBillButton = document.getElementById('print-bill');
    const checkoutButton = document.getElementById('checkout-btn');
    const products = document.querySelectorAll('.product');
    const cart = [];

    products.forEach(product => {
        const addToCartButton = product.querySelector('.add-to-cart');
        addToCartButton.addEventListener('click', function () {
            const productId = product.dataset.id;
            const productName = product.querySelector('h2').innerText;
            const productPrice = parseFloat(product.dataset.price);

            // Check if the product is already in the cart
            const existingItem = cart.find(item => item.id === productId);

            if (existingItem) {
                existingItem.quantity++;
            } else {
                cart.push({
                    id: productId,
                    name: productName,
                    price: productPrice,
                    quantity: 1
                });
            }

            updateCart();
        });
    });

    function updateCart() {
        cartItems.innerHTML = '';

        let total = 0;

        cart.forEach(item => {
            const listItem = document.createElement('li');
            listItem.className = 'cart-item';

            const itemInfo = document.createElement('div');
            itemInfo.className = 'cart-item-info';

            const itemName = document.createElement('p');
            itemName.innerText = `${item.name} x${item.quantity}`;

            const itemPrice = document.createElement('p');
            itemPrice.innerText = `Rs.${(item.price * item.quantity).toFixed(2)}`;

            const itemActions = document.createElement('div');
            itemActions.className = 'cart-item-actions';

            const removeButton = document.createElement('button');
            removeButton.innerText = 'Remove';
            removeButton.addEventListener('click', function () {
                cart.splice(cart.indexOf(item), 1);
                updateCart();
            });

            itemActions.appendChild(removeButton);
            itemInfo.appendChild(itemName);
            itemInfo.appendChild(itemPrice);
            listItem.appendChild(itemInfo);
            listItem.appendChild(itemActions);
            cartItems.appendChild(listItem);

            total += item.price * item.quantity;
        });

        totalPriceElement.innerText = `Rs.${total.toFixed(2)}`;

        // Enable/disable checkout button based on the cart items
        checkoutButton.disabled = cart.length === 0;
    }

    printBillButton.addEventListener('click', function () {
        printBill();
    });

    function printBill() {
        const billContent = generateBillContent();
        const printWindow = window.open('', '_blank');
        printWindow.document.write('<html><head><title>Print</title></head><body>');
        printWindow.document.write('<pre>' + billContent + '</pre>');
        printWindow.document.write('</body></html>');
        printWindow.document.close();
        printWindow.print();
    }

    function generateBillContent() {
        let billContent = 'Fillbasket Supermarket\n\n';
        cart.forEach(item => {
            billContent += `${item.name} x${item.quantity}  Rs.${(item.price * item.quantity).toFixed(2)}\n`;
        });
        billContent += '\n---------------------------------------------\n';
        billContent += `Total: Rs.${totalPriceElement.innerText}\n\n`;
        billContent += 'Thank you for shopping with us!\n';
        return billContent;
    }
});
