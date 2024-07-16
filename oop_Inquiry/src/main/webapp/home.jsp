<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bidding System - Home</title>
    
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
            text-align: center;
        }
        
        .body-content h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }
        
        .body-content p {
            font-size: 18px;
            line-height: 1.5;
            margin-bottom: 30px;
        }
        
        .cta-button {
            display: inline-block;
            background-color: #ff9900;
            color: white;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        
        .cta-button:hover {
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
        <h1>Welcome to the Bidding System</h1>
        <p>Discover a world of exciting bidding opportunities and find your perfect item.</p>
        <a href="InqInsert.jsp" class="cta-button">Make an Inquiry</a>
    </div>
    
    <footer class="footer">
        <p>Contact Us:</p>
        <p>Email: info@biddingsystem.com | Phone: +123 456 789</p>
        <p>Our Sponsors:</p>
        <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Sponsor 1">
        <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="Sponsor 2">
    </footer>
</body>

</html>
