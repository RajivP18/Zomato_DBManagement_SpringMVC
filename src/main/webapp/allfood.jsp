<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Food List</title>
<style>
  /* Global styles */
  body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(to right, #f8b400, #f8b400);
    margin: 0;
    padding: 0;
    color: #333;
  }

  h1 {
    text-align: center;
    font-size: 2.5rem;
    margin: 40px 0;
    color: #333;
  }

  /* Table styling */
  table {
    width: 90%;
    margin: 0 auto;
    border-collapse: collapse;
    border-radius: 8px;
    overflow: hidden;
  }

  th, td {
    padding: 15px;
    text-align: center;
    border: 1px solid #ddd;
  }

  th {
    background-color: #ff6347;
    color: #fff;
    font-size: 1.1rem;
  }

  td {
    background-color: #f4f4f4;
  }

  tr:nth-child(even) td {
    background-color: #f9f9f9;
  }

  /* Button styles */
  button {
    background-color: #ff6347;
    color: white;
    font-size: 1rem;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease-in-out, transform 0.2s ease-in-out;
  }

  button:hover {
    background-color: #e53e2c;
    transform: translateY(-3px);
  }

  button:active {
    transform: translateY(1px);
  }

  /* Image styling */
  img {
    width: 80px;
    height: 80px;
    object-fit: cover;
    border-radius: 5px;
  }

  /* Links */
  a {
    text-decoration: none;
  }

  /* Action buttons container */
  td a {
    margin: 5px;
  }

  /* Footer/Home button */
  .home-button {
    display: block;
    width: 150px;
    margin: 40px auto;
    padding: 12px 20px;
    font-size: 1.2rem;
    background-color: #ff6347;
    color: white;
    border: none;
    border-radius: 5px;
    text-align: center;
    text-decoration: none;
    transition: background-color 0.3s ease-in-out;
  }

  .home-button:hover {
    background-color: #e53e2c;
  }

  /* Responsive design */
  @media (max-width: 768px) {
    table {
      width: 100%;
    }

    th, td {
      padding: 10px;
    }

    button {
      font-size: 0.9rem;
    }

    h1 {
      font-size: 2rem;
    }
  }
</style>
</head>
<body>

<h1>Food List</h1>

<table>
  <tr>
    <th>Image</th>
    <th>ID</th>
    <th>Name</th>
    <th>Description</th>
    <th>Category</th>
    <th>Type</th>
    <th>Rating</th>
    <th>Price</th>
    <th colspan="2">Action</th>
  </tr>

  <c:forEach var="f" items="${fl}">
    <tr>
      <td><img alt="photo" src="${f.getImage()}"></td>
      <td>${f.getId()}</td>
      <td>${f.getName()}</td>
      <td>${f.getDescription()}</td>
      <td>${f.getCategory()}</td>
      <td>${f.getType()}</td>
      <td>${f.getRating()}</td>
      <td>${f.getPrice()}</td>
      <td><a href="update?id=${f.getId()}"><button>Update</button></a></td>
      <td><a href="delete?id=${f.getId()}"><button>Delete</button></a></td>
    </tr>
  </c:forEach>
</table>

<a href="index.jsp" class="home-button">Home</a>

</body>
</html>