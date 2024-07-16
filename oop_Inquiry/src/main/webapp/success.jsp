<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inquiry Details</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        
        .header {
            background-color: #333;
            color: white;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo h1 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 2px;
        }
        
        .navigation ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }
        
        .navigation li {
            margin-left: 20px;
        }
        
        .navigation a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }
        
        .navigation a:hover {
            color: #ff9900;
        }
        
        .body-content {
            padding: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: calc(100vh - 200px);
        }
        
        .inquiry {
            background-color: #fff;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }
        
        .inquiry h1 {
            margin-top: 0;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        
        table th, table td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        
        table th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        
        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        
        .btn {
            display: inline-block;
            background-color: #ff9900;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-right: 10px;
        }
        
        .btn:hover {
            background-color: #e68a00;
        }
        
        .footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }
        
        .footer p {
            margin: 0;
            margin-bottom: 10px;
        }
        
        .footer img {
            width: 100px;
            height: auto;
            margin: 0 10px;
            vertical-align: middle;
        }
    </style>
</head>

<body>
    <header class="header">
        <div class="logo">
            <h1>Bidding System</h1>
        </div>
        <nav class="navigation">
<ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="InqInsert.jsp">Inquiry</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <div class="body-content">
        <div class="inquiry">
            <h1>Inquiry Details</h1>
            <table>
                <c:forEach var="inq" items="${inqDetails}">
                    <c:set var="type" value="${inq.type}"/>
                    <c:set var="name" value="${inq.name}"/>
                    <c:set var="phone" value="${inq.phone}"/>
                    <c:set var="email" value="${inq.email}"/>
                    <c:set var="nic" value="${inq.nic}"/>
                    <c:set var="title" value="${inq.title}"/>
                    <c:set var="inquiry" value="${inq.inquiry}"/>
                    
                    <tr>
                        <th>Type</th>
                        <td>${inq.type}</td>
                    </tr>
                    <tr>
                        <th>Name</th>
                        <td>${inq.name}</td>
                    </tr>
                    <tr>
                        <th>Phone</th>
                        <td>${inq.phone}</td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td>${inq.email}</td>
                    </tr>
                    <tr>
                        <th>NIC</th>
                        <td>${inq.nic}</td>
                    </tr>
                    <tr>
                        <th>Title</th>
                        <td>${inq.title}</td>
                    </tr>
                    <tr>
                        <th>Inquiry</th>
                        <td>${inq.inquiry}</td>
                    </tr>
                </c:forEach>
            </table>
            
            <c:url value="inqUpdate.jsp" var="inqUpdate">
                <c:param name="type" value="${type}"></c:param>
                <c:param name="name" value="${name}"></c:param>
                <c:param name="phone" value="${phone}"></c:param>
                <c:param name="email" value="${email}"></c:param>
                <c:param name="nic" value="${nic}"></c:param>
                <c:param name="title" value="${title}"></c:param>
                <c:param name="inquiry" value="${inquiry}"></c:param>
            </c:url>
            
            <center><a href="${inqUpdate}" class="btn">Update Inquiry</a>
            
            <c:url value="inqDelete.jsp" var="inqDelete">
                <c:param name="type" value="${type}"></c:param>
                <c:param name="name" value="${name}"></c:param>
                <c:param name="phone" value="${phone}"></c:param>
                <c:param name="email" value="${email}"></c:param>
                <c:param name="nic" value="${nic}"></c:param>
                <c:param name="title" value="${title}"></c:param>
                <c:param name="inquiry" value="${inquiry}"></c:param>
            </c:url>
            
             <a href="${inqDelete}" class="btn">Delete Inquiry</a> </center>
        </div>
    </div>
    
    <footer class="footer">
        <p>Contact Us:</p>
        <p>Email: info@music.lk | Phone: +123 456 789</p>
        <p>Our Sponsors:</p>
        <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Sponsor 1">
        <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="Sponsor 2">
    </footer>
</body>

</html>
