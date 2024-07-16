<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Inquiries</title>
    
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
        
        .inputs input,
        .inputs select,
        .inputs textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        
        .inputs input:focus,
        .inputs select:focus,
        .inputs textarea:focus {
            outline: none;
            border-color: #ff9900;
        }
        
        .btnn {
            text-align: center;
            margin-top: 20px;
        }
        
        .btn {
            background-color: #ff9900;
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
        <%
            String type = request.getParameter("type");
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String nic = request.getParameter("nic");
            String title = request.getParameter("title");
            String inquiry = request.getParameter("inquiry");
        %>
        
        <div class="inquiry">
            <h1>Update Inquiry</h1>
            <form action="update" method="post">
                <div class="inputs">
                    <p>Select Inquiry type:</p>
                    <select name="type" value="<%= type %>">
                        <option value="">Select Inquiry type</option>
                        <option value="Normal Inquiry">Normal Inquiry</option>
                        <option value="Urgent Inquiry">Urgent Inquiry</option>
                        <option value="Complain">Complain</option>
                    </select>
                </div>
                <div class="inputs">
                    <p>Full Name</p>
                    <input type="text" name="name" value="<%= name %>" required>
                </div>
                <div class="inputs">
                    <p>Phone</p>
                    <input type="text" name="phone" value="<%= phone %>" required>
                </div>
                <div class="inputs">
                    <p>Email</p>
                    <input type="email" name="email" value="<%= email %>" required>
                </div>
                <div class="inputs">
                    <p>NIC</p>
                    <input type="text" name="nic" value="<%= nic %>" readonly>
                </div>
                <div class="inputs">
                    <p>Title</p>
                    <input type="text" name="title" value="<%= title %>" required>
                </div>
                <div class="inputs">
                    <p>Inquiry</p>
                    <textarea name="inquiry" rows="4" required><%= inquiry %></textarea>
                </div>
                <div class="btnn">
                    <button type="submit" class="btn" onclick="showSuccessAlert()">Update Inquiry</button>
                </div>
            </form>
        </div>
    </div>
    
    <script>
        function showSuccessAlert() {
            alert("Inquiry updated successfully!");
        }
    </script>
    
    <footer class="footer">
        <p>Contact Us:</p>
        <p>Email: info@biddingsystem.com | Phone: +123 456 789</p>
        <p>Our Sponsors:</p>
        <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Sponsor 1">
        <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="Sponsor 2">
    </footer>
</body>

</html>
