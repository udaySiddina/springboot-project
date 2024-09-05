<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Your Step</title> 

    <style>
      body {
        background-image: url('https://img.freepik.com/free-photo/delicious-meal-table_23-2150857956.jpg?t=st=1699073489~exp=1699077089~hmac=9cc42c480837eee31d729a05d23d10beb0c9716db24dc4e827d3f3338a8db02b&w=1380'); /* Replace 'background-image.jpg' with your image URL */
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* Do not repeat the image */
            background-attachment: fixed; /* Fix the image in place */
            /* You can also specify background position if needed */
            /* background-position: center center; */
            /* Specify additional styles like font, color, etc. */
            font-family: Arial, sans-serif;
            color: #f61a1a; /* Dark Gray text color */
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
      }
      .heading {
            text-align: center;
            color: white;
            padding: 5px 0;
        }

        /* CSS for the navigation bar */
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

      .container {
        max-width: 800px;
        margin: auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      }

      .delivery-boy {
        text-align: center;
        margin-bottom: 20px;
      }

      .delivery-boy img {
        width: 100px;
        height: 100px;
        border-radius: 50%;
        object-fit: cover;
      }

      .ratings {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 20px;
        font-size: 24px;
      }

      .num-ratings {
        text-align: center;
        margin-bottom: 20px;
        color: #777;
      }

      .review {
        border-bottom: 1px solid #ddd;
        padding: 10px 0;
        margin-bottom: 10px;
      }

      .review:last-child {
        border-bottom: none;
        margin-bottom: 0;
      }

      .review p {
        margin: 0;
      }

      .review .user {
        font-weight: bold;
      }

      .review .date {
        color: #777;
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
    </style>
  </head>
  <body>
    <div class="heading">
        <h3 style="color: white">Your Ratings/FeedBacks</h3>
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
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="container">
      <div class="delivery-boy">
        <h1>Ramesh</h1>
      </div>
      <div class="ratings">
        ★★★★☆ <!-- Represents 4.5 stars -->
      </div>
      <div class="num-ratings">(Based on 100 ratings)</div>
      <div class="reviews">
        <div class="review">
          <p class="user">User1:</p>
          <p>Great service and timely delivery. Highly recommended.</p>
          <p class="date">10th October 2023</p>
        </div>
        <div class="review">
          <p class="user">User2:</p>
          <p>Excellent service. Polite and courteous delivery boy.</p>
          <p class="date">8th October 2023</p>
        </div>
        <!-- Add more reviews as needed -->
      </div>
    </div>
  </body>
</html>
