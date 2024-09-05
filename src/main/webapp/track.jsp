<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Your Step</title> 

    <style>
      /* Set the size and style of the rectangular map container */
      body {
            background-image: url('https://as2.ftcdn.net/v2/jpg/06/19/93/59/1000_F_619935917_sPGsrIXWZ10P0vrRuhC5Pt3kFr6a5Gzk.jpg'); /* Replace 'background-image.jpg' with your image URL */
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* Do not repeat the image */
            background-attachment: fixed; /* Fix the image in place */
            /* You can also specify background position if needed */
            /* background-position: center center; */
            /* Specify additional styles like font, color, etc. */
            font-family: Arial, sans-serif;
            color: #333; /* Dark Gray text color */
            
        }
      #map-container {
        width: 600px;
        height: 400px;
        margin: auto;
        border: 1px solid #ccc;
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
      /* Set the size of the map */
      #map {
        width: 100%;
        height: 100%;
      }

      /* Style the search box and button */
      #search-container {
        text-align: center;
        margin: 20px auto;
      }

      #pac-input {
        width: 300px;
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 16px;
      }
      .heading {
            text-align: center;
            color: white;
            padding: 5px 0;
        }

      #search-button {
        padding: 10px 20px;
        border: none;
        background-color: #4caf50;
        color: white;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
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
      <h3 style="color: white">Location Tracker</h3>
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
    <!-- Create a search bar container -->
    <div id="search-container">
      <input id="pac-input" type="text" placeholder="Enter a location" />
      <button id="search-button">Search</button>
    </div>
    <!-- Display the map inside a centered rectangular container -->
    <div id="map-container">
      <div id="map"></div>
    </div>

    <script>
      function initMap() {
        var initialLocation = { lat: 40.7128, lng: -74.0060 }; // Initial location (New York City)
        var map = new google.maps.Map(document.getElementById('map'), {
          center: initialLocation,
          zoom: 12 // Zoom level
        });
        var input = document.getElementById('pac-input');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_CENTER].push(input);
        map.addListener('bounds_changed', function() {
          searchBox.setBounds(map.getBounds());
        });
      }
    </script>
    <!-- This script tag is used to load the Google Maps JavaScript API without an API key. -->
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
      // Call the initMap function to initialize the map
      initMap();
    </script>
  </body>
</html>
