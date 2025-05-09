<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Zomato - The Taste of Heaven</title>
<style>
  
  body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(to right, #ff7e5f, #feb47b);
    margin: 0;
    padding: 0;
    color: #fff;
  }

  h1 {
    text-align: center;
    font-size: 3rem;
    text-transform: uppercase;
    letter-spacing: 2px;
    margin-top: 50px;
    color: #fff;
  }

  sub {
    font-size: 1.5rem;
    font-style: italic;
    color: #f0f0f0;
  }

  /* Button Styles */
  button {
    background-color: #ff6347;
    color: white;
    font-size: 1.2rem;
    border: none;
    padding: 15px 30px;
    cursor: pointer;
    border-radius: 10px;
    transition: all 0.3s ease-in-out;
    margin: 15px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  }

  button:hover {
    background-color: #ff4500;
    transform: translateY(-5px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
  }

  button:active {
    transform: translateY(2px);
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
  }

  
  a {
    text-decoration: none;
  }

  
  .button-container {
    display: flex;
    justify-content: center;
    margin-top: 40px;
    flex-wrap: wrap;
  }

  
  @media (max-width: 768px) {
    h1 {
      font-size: 2.5rem;
    }

    button {
      font-size: 1rem;
      padding: 12px 25px;
    }
  }
</style>

</head>
<body>

<h1>Zomato<sub>the taste of heaven</sub></h1>

<div class="button-container">
  <a href="create.jsp">
    <button>Create</button>
  </a>
  <a href="all">
    <button>View All Items</button>
  </a>
</div>

</body>
</html>
