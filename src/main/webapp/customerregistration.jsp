<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
        }

        section {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            width: 100%;
            background: url('images/img-1.jpeg') no-repeat;
            background-position: center;
            background-size: cover;
        }

        section:before {
            content: "";
            background-color: #0009;
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
        }

        .form-box {
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            width: 400px;
            height: 550px;
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.5);
            border-radius: 20px;
            backdrop-filter: blur(15px);
        }

        h2 {
            color: #fff;
            text-align: center;
            font-size: 2em;
        }

        .inputbox {
            position: relative;
            border-bottom: 2px solid #fff;
            margin: 20px 0;
            width: 310px;
        }

        .inputbox label {
            transform: translateY(-50%);
            color: #fff;
            font-size: 1em;
            pointer-events: none;
            transition: .5s;
            position: absolute;
            top: 50%;
            left: 5px;
        }

        input:focus ~ label,
        input:valid ~ label {
            top: -5px;
        }

        .inputbox input {
            background: transparent;
            border: none;
            outline: none;
            font-size: 1em;
            padding: 0 35px 0 5px;
            color: #fff;
            width: 100%;
            height: 50px;
        }

        .inputbox ion-icon {
            font-size: 1.2em;
            position: absolute;
            right: 8px;
            color: #fff;
            top: 20px;
        }

        .forget {
            color: #fff;
            display: flex;
            justify-content: space-between;
            margin: -15px 0 15px;
            font-size: .9em;
        }

        .forget label {
            color: #fff;
        }

        .forget label input {
            margin-right: 3px;
        }

        .forget a {
            color: #fff;
            text-decoration: none;
        }

        .forget a:hover {
            text-decoration: underline;
        }

        button {
            width: 100%;
            height: 40px;
            border-radius: 40px;
            background: #fff;
            border: none;
            outline: none;
            cursor: pointer;
            font-size: 1em;
            font-weight: 600;
        }

        .register {
            font-size: .9em;
            color: #fff;
            text-align: center;
            margin: 25px 0 10px;
        }

        .register p a {
            text-decoration: none;
            color: #fff;
            font-weight: 600;
        }

        .register p a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<section>
    <div class="form-box">
        <div class="form-value">
            <form id="signupForm" action="insertcustomer" method="post">
                <h2>Registration</h2>
                <div class="inputbox">
                    <ion-icon name="person-outline"></ion-icon>
                    <input type="text" placeholder="Name" name="name" id="name" required>
                </div>
                <div class="inputbox">
                    <ion-icon name="mail-outline"></ion-icon>
                    <input type="email" placeholder="Email" name="email" id="email" required>
                </div>
                <div class="inputbox">
				    <ion-icon name="call-outline"></ion-icon>
				    <input type="text" placeholder="Phone Number" name="phonenumber" id="phonenumber" required pattern="^[6-9]\d{9}$" title="number must start with 6 7 8 9 ">
				</div>
                
                <div class="inputbox">
                    <ion-icon name="lock-closed-outline"></ion-icon>
                    <input type="password" placeholder="Password" name="password" id="password" required minlength="6">
                </div>
                <button type="submit">Register</button>
                <div class="register">
                    <p>Already have an account? <a href="customerlogin">Login</a></p>
                </div>
            </form>
        </div>
    </div>
</section>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script>
    function validateForm() {
        const name = document.getElementById('name').value.trim();
        const email = document.getElementById('email').value.trim();
        const phone = document.getElementById('phonenumber').value.trim();
        const password = document.getElementById('password').value.trim();

        if (name === "") {
            alert("Name must be filled out");
            return false;
        }

        if (email === "") {
            alert("Email must be filled out");
            return false;
        }

        if (phone === "") {
            alert("Phone number must be filled out");
            return false;
        } else if (!/^\d{10}$/.test(phone)) {
            alert("Please enter a valid 10-digit phone number");
            return false;
        }

        if (password === "") {
            alert("Password must be filled out");
            return false;
        } else if (password.length < 6) {
            alert("Password must be at least 6 characters long");
            return false;
        }

        return true;
    }
</script>
</body>
</html>
