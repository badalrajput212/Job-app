<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Job Post List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap"
          rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #141e30, #243b55);
            min-height: 100vh;
        }

        /* Navbar */
        .navbar {
            background: rgba(0,0,0,0.85) !important;
        }
        .navbar-brand {
            font-weight: 600;
            color: #ffc107 !important;
        }
        .nav-link {
            color: #fff !important;
            margin-left: 12px;
        }
        .nav-link:hover {
            color: #ffc107 !important;
        }

        /* Heading */
        .page-title {
            color: #fff;
            font-weight: 600;
        }

        /* Job Card */
        .job-card {
            background: rgba(255,255,255,0.12);
            backdrop-filter: blur(10px);
            border-radius: 18px;
            color: #fff;
            box-shadow: 0 20px 40px rgba(0,0,0,0.35);
            transition: transform 0.3s, box-shadow 0.3s;
            height: 100%;
        }

        .job-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 30px 60px rgba(0,0,0,0.45);
        }

        .job-title {
            font-weight: 600;
            font-size: 1.2rem;
        }

        .label {
            color: #ffc107;
            font-weight: 500;
        }

        .tech-badge {
            background: #ffc107;
            color: #000;
            border-radius: 20px;
            padding: 5px 12px;
            font-size: 0.8rem;
            margin: 3px;
            display: inline-block;
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand fs-4" href="#">TechHire 🚀</a>

        <button class="navbar-toggler bg-light" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="https://telusko.com/">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Content -->
<div class="container py-5">
    <h2 class="text-center page-title mb-5">Available Job Openings</h2>

    <div class="row g-4">
        <c:forEach var="jobPost" items="${jobPosts}">

            <div class="col-lg-4 col-md-6">
                <div class="card job-card p-4">
                    <div class="card-body">

                        <h5 class="job-title mb-3">
                            ${jobPost.postProfile}
                        </h5>

                        <p>
                            <span class="label">Description:</span><br>
                            ${jobPost.postDesc}
                        </p>

                        <p>
                            <span class="label">Experience:</span><br>
                            ${jobPost.reqExperience} years
                        </p>

                        <p class="label mb-2">Tech Stack:</p>
                        <div>
                            <c:forEach var="tech" items="${jobPost.postTechStack}">
                                <span class="tech-badge">${tech}</span>
                            </c:forEach>
                        </div>

                    </div>
                </div>
            </div>

        </c:forEach>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>