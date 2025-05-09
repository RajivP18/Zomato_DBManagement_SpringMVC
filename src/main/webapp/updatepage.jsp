<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Update Food</title>
<style>
  /* Global styles */
  body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f9;
    margin: 0;
    padding: 0;
    color: #333;
  }

  h1 {
    text-align: center;
    font-size: 2rem;
    margin-top: 40px;
    color: #ff6347;
  }

  /* Form styling */
  form {
    background-color: #fff;
    padding: 30px;
    margin: 20px auto;
    width: 80%;
    max-width: 500px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
  }

  label {
    font-weight: bold;
    display: block;
    margin-bottom: 8px;
    color: #555;
  }

  input[type="text"], input[type="number"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0 20px 0;
    border: 2px solid #ddd;
    border-radius: 5px;
    font-size: 1rem;
    box-sizing: border-box;
  }

  input[type="text"]:focus, input[type="number"]:focus {
    border-color: #ff6347;
    outline: none;
    box-shadow: 0 0 5px rgba(255, 99, 71, 0.3);
  }

  button {
    background-color: #ff6347;
    color: white;
    padding: 12px 20px;
    font-size: 1.2rem;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
    transition: background-color 0.3s ease;
  }

  button:hover {
    background-color: #e53e2c;
  }

  button:active {
    transform: translateY(1px);
  }

  /* Read-only fields */
  input[readonly] {
    background-color: #f1f1f1;
    cursor: not-allowed;
  }

  /* Responsive Design */
  @media (max-width: 768px) {
    form {
      width: 90%;
      padding: 20px;
    }
  }
</style>
</head>
<body>

<h1>Update Food Item</h1>

<form action="updatepage" method="post">
  <label for="id">ID:</label>
  <input type="text" name="id" id="id" value="${food.id}" readonly="readonly"><br>

  <label for="name">Name:</label>
  <input type="text" id="name" name="name" value="${food.name}" required><br>

  <label for="description">Description:</label>
  <input type="text" id="description" name="description" value="${food.description}" required><br>

  <label for="category">Category:</label>
  <input type="text" id="category" name="category" value="${food.category}" required><br>

  <label for="type">Type:</label>
  <input type="text" id="type" name="type" value="${food.type}" required><br>

  <label for="rating">Rating (1-5):</label>
  <input type="number" id="rating" name="rating" value="${food.rating}" min="1" max="5" required><br>

  <label for="price">Price:</label>
  <input type="number" id="price" name="price" value="${food.price}" required><br>

  <label for="image">Image URL:</label>
  <input type="text" id="image" name="image" value="${food.image}" required><br>

  <button type="submit">Submit</button> 
</form>

</body>
</html>
