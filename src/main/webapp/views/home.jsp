<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Find Dream</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css"
          rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
            background: linear-gradient(-45deg, #0f2027, #203a43, #2c5364);
            background-size: 400% 400%;
            animation: gradientMove 12s ease infinite;
            color: #fff;
        }

        @keyframes gradientMove {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Navbar */
        .navbar {
            background: rgba(15, 32, 39, 0.7) !important;
            backdrop-filter: blur(14px);
            border-bottom: 1px solid rgba(255,255,255,0.08);
        }
        .navbar-brand {
            font-weight: 700;
            font-size: 1.8rem;
            background: linear-gradient(90deg, #00e5ff, #38ef7d);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .nav-link {
            color: #e5e7eb !important;
            margin-left: 15px;
        }
        .nav-link:hover {
            color: #38ef7d !important;
        }

        /* Hero */
        .hero {
            padding: 110px 20px 80px;
            text-align: center;
        }
        .hero h1 {
            font-size: 3rem;
            font-weight: 700;
        }
        .hero p {
            max-width: 650px;
            margin: 20px auto 0;
            color: #d1d5db;
        }

        /* Cards */
        .glass-card {
            background: rgba(255,255,255,0.12);
            backdrop-filter: blur(14px);
            border-radius: 20px;
            padding: 35px;
            transition: all 0.35s ease;
            box-shadow: 0 25px 45px rgba(0,0,0,0.35);
            height: 100%;
        }
        .glass-card:hover {
            transform: translateY(-12px);
            box-shadow: 0 35px 70px rgba(0,0,0,0.5);
        }
        .glass-card i {
            font-size: 55px;
            margin-bottom: 15px;
            background: linear-gradient(135deg, #00e5ff, #38ef7d);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .glass-card h4 {
            font-weight: 600;
        }
        .glass-card p {
            color: #e5e7eb;
        }

        .btn-custom {
            border-radius: 30px;
            padding: 10px 28px;
            font-weight: 500;
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="#">TechHire 🚀</a>
        <button class="navbar-toggler bg-light" type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="https://telusko.com/">Resume Analyzer</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero -->
<div class="hero">
    <h1>Find Your Dream Job 🚀</h1>
    <p class="lead">
        Connecting talent with the right tech opportunities.
        Where skills meet the future of technology.
    </p>
</div>

<!-- Action Section -->
<div class="container pb-5">
    <div class="row g-4 justify-content-center">

        <div class="col-md-5">
            <div class="glass-card text-center">
                <i class="bi bi-briefcase-fill"></i>
                <h4>Browse Jobs</h4>
                <p>Explore curated job opportunities tailored for your skills</p>
                <a href="/viewalljobs" class="btn btn-primary btn-custom mt-3">
                    View All Jobs
                </a>
            </div>
        </div>

        <div class="col-md-5">
            <div class="glass-card text-center">
                <i class="bi bi-plus-circle-fill"></i>
                <h4>Post a Job</h4>
                <p>Hire top talent by posting new job opportunities</p>
                <a href="/addjob" class="btn btn-success btn-custom mt-3">
                    Add Job
                </a>
            </div>
        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>