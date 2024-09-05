<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Step</title> 
    <style>
        /* Reset some default styles for a cleaner appearance */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-image: url('https://img.freepik.com/free-photo/top-view-food-frame-with-copy-space_23-2148723447.jpg?w=1060&t=st=1699073241~exp=1699073841~hmac=cb54ed4152d01535ff2fc0d9238a0c48ad445d2d40eedb5d255d2539cab2bcce'); /* Replace 'background-image.jpg' with your image URL */
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* Do not repeat the image */
            background-attachment: fixed; /* Fix the image in place */
            /* You can also specify background position if needed */
            /* background-position: center center; */
            /* Specify additional styles like font, color, etc. */
            font-family: Arial, sans-serif;
            color: #333; /* Dark Gray text color */
            
        }

           ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: rgba(255, 255, 255, 0.2); /* White background with 0.2 opacity */
        }

        li {
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #f9f5f5;
            color: rgb(30, 30, 30);
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
            padding: 10px;
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background for readability */
            font-size: 14px;
            margin-bottom: 20px;
            color: #333; /* Dark Gray */
        }


        .order-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .order-card h2 {
            font-size: 18px;
            margin-bottom: 10px;
            color: #f44336; /* Red */
        }

        .order-card p {
            font-size: 14px;
            color: #555; /* Gray */
            margin-bottom: 8px;
        }

        .order-card img {
            max-width: 100px;
            height: auto;
            margin-right: 20px;
        }

        button {
            background-color: #f44336; /* Red */
            color: #fff;
            border: none;
            padding: 8px 16px;
            font-size: 14px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #d32f2f; /* Darker Red on Hover */
        }
        .dropdown {
            float: right;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            font-size: 16px;
            border: none;
            outline: none;
            color: white;
            padding: 14px 16px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
        .heading {
            text-align: center;
            color: white;
            padding: 5px 0;
        }
        
           function showPage(pageNumber) {
            for (let i = 1; i <= 5; i++) {
                if (i === pageNumber) {
                    document.getElementById("page" + i).style.display = "block";
                } else {
                    document.getElementById("page" + i).style.display = "none";
                }
            }
        }

        function populateOrders() {
            const orders = [
                {
                    orderNumber: 12345,
                    customer: "Ram",
                    address: "Gandhinagar, Vijayawada, AP, 522022",
                    items: "Pizza, Salad, Soda",
                    deliveryInstructions: "Ring the doorbell twice."
                },
                {
                    orderNumber: 54321,
                    customer: "Samika",
                    address: "456 Sai St, Rjy, AP, 522013",
                    items: "Burger, Fries, Milkshake",
                    deliveryInstructions: "Leave the order at the doorstep."
                },
                {
                    orderNumber: 67890,
                    customer: "Sarah",
                    address: "789 Oak St, Mumbai, MP, 139906",
                    items: "Sushi, Miso Soup, Green Tea",
                    deliveryInstructions: "Call when you arrive."
                }
                // Add more orders if needed
            ];

            const page2 = document.getElementById("page2");
            const orderCard = document.createElement("div");
            orderCard.className = "order-card";
            orderCard.style.backgroundColor = "#fce4ec";

            const order = orders[2]; // Index 2 corresponds to the 3rd order

            const content = `
                <div>
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe2I5LZ69i8iC8d8YiTU0iW3r60hMMb_vGqw&usqp=CAU" alt="Pizza">
                </div>
                <div>
                    <h2>Order #${order.orderNumber}</h2>
                    <p>Customer: ${order.customer}</p>
                    <p>Address: ${order.address}</p>
                    <p>Items: ${order.items}</p>
                    <p>Delivery Instructions: ${order.deliveryInstructions}</p>
                </div>
                <button class="accepted-button" onclick="acceptOrder(${order.orderNumber}, this)">Accept Order</button>
            `;

            orderCard.innerHTML = content;
            page2.appendChild(orderCard);
        }

        // Calling populateOrders to populate the 2nd page with the 3rd order
        populateOrders();
    </style>
</head>
<body>

    <div class="heading">
        <h3 style="color: white">Your Step Delivery</h3>
    </div>
    <br>
    <br>

        <ul>
            <li><a href="home">Home</a></li>
            <li><a href="delivery">Orders</a></li>
            <li><a href="track">Track</a></li>
            <li><a href="reviews">Reviews</a></li>
        <div class="dropdown">
          <button class="dropbtn">Profile
              <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
              <a href="profile">Profile Page</a>
              <a href="index">Logout</a>
          </div>
      </div>
    </ul>
        
    </header>


      <div class="container">
        <div id="page1" >
            <div class="order-card" style="background-color: #c5e1a5;">
                <div>
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe2I5LZ69i8iC8d8YiTU0iW3r60hMMb_vGqw&usqp=CAU" alt="Pizza">
                </div>
               <div>
                <h2>Order #12345</h2>
                <p>Customer: Ram</p>
                <p>Address: Gandhinagar, Vijayawada, AP, 522022</p>
                <p>Items: Pizza, Salad, Soda</p>
                <p>Delivery Instructions: Ring the doorbell twice.</p>
            </div>
                <button class="accepted-button" onclick="acceptOrder(12345, this)">Accept Order</button>
            </div>

            <div class="order-card" style="background-color: #fbd5bb;">
                <div>
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCbCCu2IQLlitk_yI0PJ2c0ALM486n2FMbkA&usqp=CAU" alt="Sushi">
                </div>
                <div>
                    <h2>Order #67890</h2>
                    <p>Customer: Sarah </p>
                    <p>Address: 345 postal colony, hyd, Ts, 139906</p>
                    <p>Items: Sushi, Miso Soup, Green Tea</p>
                    <p>Delivery Instructions: Call when you arrive.</p>
                </div>
                <button class="accepted-button" onclick="acceptOrder(12345, this)">Accept Order</button>
            </div>
        </div>
    </div>
      <div class="container">
        <div id="page2" style="display: none;">
            <div class="order-card" style="background-color: #fce4ec;">
                <div>
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjBEWuSL5FRZ7Yabdzz10SDuvrBauBgQ1p8A&usqp=CAU" alt="Burger">
                </div>
                <div>
                    <h2>Order #54321</h2>
                    <p>Customer: Samika</p>
                    <p>Address: 456 Sai St, sedipet, hyd, 522013</p>
                    <p>Items: Burger, Fries, Milkshake</p>
                    <p>Delivery Instructions: Leave the order at the doorstep.</p>
                </div>
                <button class="accepted-button" onclick="acceptOrder(12345, this)">Accept Order</button>
            </div>
            <div class="order-card" style="background-color: #bbdefb;">
                <div>
                    <img src="data:image/jpeg;base64,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" alt="Sushi">
                </div>
                <div>
                    <h2>Order #47892</h2>
                    <p>Customer: Ammulya </p>
                    <p>Address: 79-10 Top view appartment, ravipet, hyd, 433234</p>
                    <p>Items: Sushi, Miso Soup, Green Tea</p>
                    <p>Delivery Instructions: Call when you arrive.</p>
                </div>
                <button class="accepted-button" onclick="acceptOrder(12345, this)">Accept Order</button>
            </div>
        </div>
    </div>
    
    <div class="pagination" style="text-align: center;">
        <button onclick="showPage(1)">1</button>
        <button onclick="showPage(2)">2</button>
        <button onclick="showPage(3)">3</button>
        <button onclick="showPage(4)">4</button>
        <button onclick="showPage(5)">5</button>
    </div>

    <script>
        function showPage(pageNumber) {
            for (let i = 1; i <= 5; i++) {
                if (i === pageNumber) {
                    document.getElementById("page" + i).style.display = "block";
                } else {
                    document.getElementById("page" + i).style.display = "none";
                }
            }
        }

        function acceptOrder(orderNumber, button) {
            button.innerHTML = "Accepted";
            button.style.backgroundColor = "#4CAF50"; // Change button color to green
            button.style.cursor = "default"; // Disable further clicks
            alert(`Order #${orderNumber} has been accepted.`);
        }
    </script>
</body>
</html>
