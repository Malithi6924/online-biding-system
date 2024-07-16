<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Inquiries</title>
    
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
        }
        
        .inquiry {
            background-color: #fff;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 0 auto;
        }
        
        .inquiry h1 {
            margin-top: 0;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }
        
        .inputs {
            margin-bottom: 20px;
        }
        
        .inputs p {
            margin: 0;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }
        
        .inputs input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        
        .btnn {
            text-align: center;
            margin-top: 20px;
        }
        
        .btn {
            background-color: #ff3300;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        
        .btn:hover {
            background-color: #cc2900;
        }
        
        .footer {
            background-color: #1c2331;
            color: white;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .contact-details h3,
        .sponsors h3 {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .sponsors img {
            width: 100px;
            height: auto;
            margin-right: 10px;
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
        <%
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String nic = request.getParameter("nic");
            String title = request.getParameter("title");
            String inquiry = request.getParameter("inquiry");
        %>
        
        <div class="inquiry">
            <h1>Delete Inquiries</h1>
            <form action="delete" method="post">
                <div class="inputs">
                    <p>Full Name</p>
                    <input type="text" name="name" value="<%= name %>" readonly>
                </div>
                <div class="inputs">
                    <p>Phone</p>
                    <input type="text" name="phone" value="<%= phone %>" readonly>
                </div>
                <div class="inputs">
                    <p>Email</p>
                    <input type="email" name="email" value="<%= email %>" readonly>
                </div>
                <div class="inputs">
                    <p>NIC</p>
                    <input type="text" name="nic" value="<%= nic %>" readonly>
                </div>
                <div class="inputs">
                    <p>Title</p>
                    <input type="text" name="title" value="<%= title %>" readonly>
                </div>
                <div class="inputs">
                    <p>Inquiry</p>
                    <input type="text" name="inquiry" value="<%= inquiry %>" readonly>
                </div>
                <div class="btnn">
                    <button type="submit" class="btn" onclick="showSuccessAlert()">Delete Inquiry</button>
                </div>
            </form>
        </div>
    </div>
    
    <script>
        function showSuccessAlert() {
            alert("Inquiry deleted successfully!");
        }
    </script>
    
    <footer class="footer">
        <div class="contact-details">
            <h3>Contact Us</h3>
            <p>Email: info@music.lk</p>
            <p>Phone: +123 456 789</p>
        </div>
        <div class="sponsors">
            <h3>Our Sponsors</h3>
            <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Sponsor 1">
            <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="Sponsor 2">
        </div>
    </footer>
</body>

</html>
