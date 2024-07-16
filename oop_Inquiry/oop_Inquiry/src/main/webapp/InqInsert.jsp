<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Web site</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        body {
            background-color: #f4f4f4;
        }

        .header {
            background-color: #1c2331;
            color: white;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo h1 {
            font-size: 24px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .navigation ul {
            list-style-type: none;
            display: flex;
        }

        .navigation li {
            margin-left: 20px;
        }

        .navigation a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        .navigation a:hover {
            color: #ff9900;
        }

        .inquiry {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 40px auto;
        }

        .inquiry h1 {
            color: #1c2331;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
        }

        .inputs {
            margin-bottom: 20px;
        }

        .inputs p {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .inputs input,
        .inputs textarea,
        .inputs select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .inputs input:focus,
        .inputs textarea:focus,
        .inputs select:focus {
            outline: none;
            border-color: #ff9900;
            box-shadow: 0 0 5px rgba(255, 153, 0, 0.5);
        }

        .btnn {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
            background-color: #ff9900;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #e68a00;
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

    <div class="inquiry">
        <h1>Add Inquiry</h1>
        <form action="Insert" method="post">
            <div class="inputs">
                <p>Select Inquiry type:</p>
                <select id="dropdown" name="type" required>
                    <option disabled selected value="">Select Inquiry type</option>
                    <option value="Normal Inquiry">Normal Inquiry</option>
                    <option value="Urgent Inquiry">Urgent Inquiry</option>
                    <option value="Complain">Complain</option>
                </select>
            </div>
            <div class="inputs">
                <p>Full Name</p>
                <input type="text" name="name" required>
            </div>
            <div class="inputs">
                <p>Phone</p>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <div class="inputs">
                <p>Email</p>
                <input type="email" name="email" required>
            </div>
            <div class="inputs">
                <p>NIC</p>
                <input type="text" name="nic" placeholder="can't update again" required>
            </div>
            <div class="inputs">
                <p>Title</p>
                <input type="text" name="title" required>
            </div>
            <div class="inputs">
                <p>Enter Inquiry</p>
                <textarea id="" cols="30" rows="4" name="inquiry" required></textarea>
            </div>
            <div class="btnn">
                <button class="btn">Submit Inquiry</button>
            </div>
        </form>
    </div>

    <script>
        const mobileInput = document.getElementById('phone');

        mobileInput.addEventListener('input', function () {
            const mobileNumber = mobileInput.value;

            // Regular expression to match only numeric values
            const numericPattern = /^\d+$/;

            if (!numericPattern.test(mobileNumber)) {
                alert('Mobile number must contain only numeric values.');
                mobileInput.value = ''; // Clear the input field
            }
        });
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
