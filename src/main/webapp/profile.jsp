<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delivery Boy Profile</title>
    <style>
        /* CSS for the profile page */
        body {

            background-image: url('https://img.freepik.com/free-photo/photo-traditional-indian-food-dish-celebrate-diwali_125540-3656.jpg?t=st=1699075814~exp=1699079414~hmac=216d446354a06831ea0bc86a43d2c10658c137f794eb4d02a93ce8dfab6147b7&w=1060'); /* Replace 'background-image.jpg' with your image URL */
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* Do not repeat the image */
            background-attachment: fixed; 
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }

        .profile-container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        .profile-container h2 {
            text-align: center;
            color: #333;
        }

        .profile-details {
            margin-top: 30px;
        }

        .detail-item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }

        .detail-item span {
            font-weight: bold;
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
            background-color: #f2f2f2;
            color: rgb(30, 30, 30);
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
    </style>
</head>

<body>
    <div class="heading">
        <h3 style="color: white">Profile</h3>
    </div>
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

    <div class="profile-container">
        <h2>Hello Ramesh</h2>
        <div class="profile-details">
            <div class="detail-item">
                <span>Name:</span>
                <span>Ramesh</span>
            </div>
            <div class="detail-item">
                <span>Number of Orders Delivered:</span>
                <span>250</span>
            </div>
            <div class="detail-item">
                <span>Total Tips:</span>
                <span>Rs.980</span>
            </div>
            <div class="detail-item">
                <span>Customer Satisfaction:</span>
                <span>85%</span>
            </div>
            <div class="detail-item">
                <span>Points</span>
                <span>1000+</span>
            </div>
            
            <!-- Add more details as needed -->
        </div>
    </div>
</body>

</html>
