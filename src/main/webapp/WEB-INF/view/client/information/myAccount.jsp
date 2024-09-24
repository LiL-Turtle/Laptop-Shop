<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Hỏi Dân IT - Dự án laptopshop" />
                <meta name="author" content="Hỏi Dân IT" />
                <title>User Detail</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>
                <!-- Google Web Fonts -->
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
                    rel="stylesheet">

                <!-- Icon Font Stylesheet -->
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                    rel="stylesheet">

                <!-- Libraries Stylesheet -->
                <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
                <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


                <!-- Customized Bootstrap Stylesheet -->
                <link href="/client/css/bootstrap.min.css" rel="stylesheet">

                <!-- Template Stylesheet -->
                <link href="/client/css/style.css" rel="stylesheet">
            </head>

            <div class="sb-nav-fixed mb-3">
                <jsp:include page="../layout/header.jsp" />

                <div id="layoutSidenav">
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid justify-content-center">
                                <h1 class="mt-5 ">Thông tin cá nhân</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
                                    <li class="breadcrumb-item active">Thông tin cá nhân</li>
                                </ol>
                                <div class="container mt-5 ">
                                    <div class="row">
                                        <div class="col-12 mx-auto justify-content-center">

                                            <hr />

                                            <div class="card " style="width: 60%">
                                                <div class="card-header text-center">
                                                    <h2>User information</h2>
                                                </div>
                                                <ul class="list-group list-group-flush">
                                                    <img class="card-img-top" src="/images/avatar/${user.avatar}"
                                                        alt="Card image cap" style=" max-width: 200px; height: auto;">
                                                    <li class="list-group-item" style="display: none;">ID: ${user.id}
                                                    </li>
                                                    <li class="list-group-item">Email: ${user.email} </li>
                                                    <li class="list-group-item">FullName: ${user.fullName}</li>
                                                    <li class="list-group-item">Address: ${user.address}</li>
                                                    <li class="list-group-item">Phone: ${user.phone}</li>
                                                </ul>
                                            </div>
                                            <a href="/my-account/update" class="btn btn-success mt-3 mb-5">Cập
                                                nhật thông
                                                tin</a>

                                        </div>

                                    </div>

                                </div>
                            </div>
                        </main>


                    </div>
                </div>

                <jsp:include page="../layout/footer.jsp" />
                <!-- Back to Top -->
                <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i
                        class="fa fa-arrow-up"></i></a>


                <!-- JavaScript Libraries -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                <script src="/client/lib/easing/easing.min.js"></script>
                <script src="/client/lib/waypoints/waypoints.min.js"></script>
                <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
                <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

                <!-- Template Javascript -->
                <script src="/client/js/main.js"></script>
                </body>

            </html>