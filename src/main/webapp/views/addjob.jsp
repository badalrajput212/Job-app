<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>find your Dream</title>
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
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            min-height: 100vh;
        }

        .navbar {
            background: #212529 !important;
        }

        .navbar-brand {
            font-weight: 600;
            color: #ffc107 !important;
        }

        .nav-link {
            color: #fff !important;
            margin-left: 10px;
        }

        .nav-link:hover {
            color: #ffc107 !important;
        }

        .job-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
        }

        .job-card h2 {
            font-weight: 600;
            color: #212529;
        }

        .form-label {
            font-weight: 500;
        }

        .form-control, .form-select {
            border-radius: 10px;
        }

        .btn-submit {
            background: #212529;
            color: #fff;
            border-radius: 25px;
            padding: 10px 30px;
            transition: 0.3s;
        }

        .btn-submit:hover {
            background: #ffc107;
            color: #000;
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

<!-- Form Section -->
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-lg-7 col-md-9">
            <div class="card job-card p-4">
                <div class="card-body">

                    <h2 class="text-center mb-4">Post a New Job</h2>

                    <form action="handleForm" method="post">

                        <div class="mb-3">
                            <label class="form-label">Post ID</label>
                            <input type="text" name="postId" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Post Profile</label>
                            <input type="text" name="postProfile" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Post Description</label>
                            <textarea name="postDesc" class="form-control" rows="3" required></textarea>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Required Experience (Years)</label>
                            <input type="number" name="reqExperience" class="form-control" required>
                        </div>

                        <div class="mb-4">
                            <label class="form-label">Tech Stack</label>
                            <select name="postTechStack" multiple class="form-select" size="6" required>
                                <option>Java</option>
                                <option>Spring Boot</option>
                                <option>JavaScript</option>
                                <option>React</option>
                                <option>Angular</option>
                                <option>Node.js</option>
                                <option>Docker</option>
                                <option>Kubernetes</option>
                                <option>AWS</option>
                                <option>Python</option>
                                <option>Machine Learning</option>
                                <option>DevOps</option>
                            </select>
                            <small class="text-muted">Hold Ctrl (Windows) or Cmd (Mac) to select multiple</small>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-submit">
                                Post Job 🚀
                            </button>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>