<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to the Hotel Booking System</title>
    <style>
        body {
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;-->
            background-color: #f0f0f0; /* Set the background color for the whole page */            
        }

        /* Add a CSS class for fade-in animation */
        .fade-in {
            animation: fadeIn 2s;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .btn-admin {
            transition: background-color 0.3s; /* Add a smooth color transition on hover and click */
        }

        .btn-admin:hover {
            background-color: #007BFF; /* Change background color on hover */
        }

        .btn-admin:active {
            background-color: #0056b3; /* Change background color on click */
        }

        /* Vertical moving text animation */
        .vertical-text {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%); /* Center the text */
            font-size: 24px;
            animation: moveCenter 2s linear infinite;
            color: #ff0000; /* Red color for the text */
        }

        /* Define the animation for text moving from the center */
        @keyframes moveCenter {
            0% {
                transform: translate(-50%, -50%);
            }
            25% {
                transform: translate(-50%, -40%); /* Move up */
            }
            50% {
                transform: translate(-50%, -50%);
            }
            75% {
                transform: translate(-50%, -60%); /* Move down */
            }
            100% {
                transform: translate(-50%, -50%);
            }
            .left {
    position: fixed;
    top: 50%;
    left: 5%; /* Adjust the left position as needed */
    transform: translate(0, -50%); /* Center the text vertically */
    font-size: 24px;
    animation: moveLeft 2s linear infinite;
    color: #ff0000; /* Red color for the text */
}

.right {
    position: fixed;
    top: 50%;
    right: 5%; /* Adjust the right position as needed */
    transform: translate(0, -50%); /* Center the text vertically */
    font-size: 24px;
    animation: moveRight 2s linear infinite;
    color: #00ff00; /* Green color for the text */
}

/* Define the animation for text moving from the left */
@keyframes moveLeft {
    0% {
        transform: translate(0, -50%);
    }
    25% {
        transform: translate(10%, -50%); /* Move to the right */
    }
    50% {
        transform: translate(0, -50%);
    }
    75% {
        transform: translate(-10%, -50%); /* Move to the left */
    }
    100% {
        transform: translate(0, -50%);
    }
}

/* Define the animation for text moving from the right */
@keyframes moveRight {
    0% {
        transform: translate(0, -50%);
    }
    25% {
        transform: translate(-10%, -50%); /* Move to the left */
    }
    50% {
        transform: translate(0, -50%);
    }
    75% {
        transform: translate(10%, -50%); /* Move to the right */
    }
    100% {
        transform: translate(0, -50%);
    }
            
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container text-center mt-5 fade-in" >
        <div class="jumbotron">
            <h1>Welcome to the Hotel Booking System</h1>
            <a href="/admin" class="btn btn-primary mr-3">ADMIN</a>
        </div>
    </div>
    <!-- Add moving text on the left side -->
    <div class="vertical-text">Welcome To Our Website</div>
</body>
</html>
