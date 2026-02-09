<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.badal.job_app.model.JobPost" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Job Details</title>
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
            background: linear-gradient(135deg, #1d2671, #c33764);
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

        /* Card */
        .job-card {
            background: rgba(255,255,255,0.15);
            backdrop-filter: blur(12px);
            border-radius: 20px;
            color: #fff;
            box-shadow: 0 25px 50px rgba(0,0,0,0.3);
        }

        .job-title {
            font-weight: 600;
            font-size: 1.6rem;
        }

        .section-label {
            font-weight: 500;
            color: #ffc107;
        }

        .tech-badge {
            background: #ffc107;
            color: #000;
            margin: 4px;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 0.85rem;
            display: inline-block;
        }

        .job-image {
            max-width: 100%;
            border-radius: 20px;
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand fs-4" href="#">CareerCraft 🚀</a>

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

<%
    JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
%>

<!-- Content -->
<div class="container py-5">
    <h2 class="text-center text-white mb-5">Job Post Details</h2>

    <div class="row align-items-center justify-content-center g-4">

        <!-- Image Section -->
        <div class="col-lg-5 text-center">
            <img
                src="https://images.unsplash.com/photo-1521737604893-d14cc237f11d"
                alt="Career Illustration"
                class="job-image shadow">
        </div>

        <!-- Job Card -->
        <div class="col-lg-6">
            <div class="card job-card p-4">
                <div class="card-body">

                    <h3 class="job-title mb-3">
                        <%= myJobPost.getPostProfile() %>
                    </h3>

                    <p>
                        <span class="section-label">Description:</span><br>
                        <%= myJobPost.getPostDesc() %>
                    </p>

                    <p>
                        <span class="section-label">Experience Required:</span><br>
                        <%= myJobPost.getReqExperience() %> years
                    </p>

                    <p class="section-label mb-2">Tech Stack:</p>
                    <div>
                        <% for (String tech : myJobPost.getPostTechStack()) { %>
                            <span class="tech-badge"><%= tech %></span>
                        <% } %>
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>