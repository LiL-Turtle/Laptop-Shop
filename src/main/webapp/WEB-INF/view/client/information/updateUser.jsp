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
                <title>Update User</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
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
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        const orgImage = "${newUser.avatar}";
                        if (orgImage) {
                            const urlImage = "/images/avatar/" + orgImage;
                            $("#avatarPreview").attr("src", urlImage);
                            $("#avatarPreview").css({ "display": "block" });
                        }

                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#avatarPreview").attr("src", imgURL);
                            $("#avatarPreview").css({ "display": "block" });
                        });
                    });
                </script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <main>
                    <div class="container-fluid px-4">
                        <div class="mt-5">
                            <div class="row">
                                <div class="col-md-6 col-12 mx-auto mt-5">
                                    <h3>Cập nhật thông tin</h3>
                                    <hr />
                                    <form:form method="post" action="/my-account/update" class="row"
                                        enctype="multipart/form-data" modelAttribute="newUser">
                                        <div class="mb-3" style="display: none">
                                            <label class="form-label">ID:</label>
                                            <form:input type="text" class="form-control" path="id" />
                                        </div>
                                        <div class="mb-3" style="display: none">
                                            <label class="form-label">Password:</label>
                                            <form:input type="text" class="form-control" path="password" />
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label class="form-label">Email:</label>
                                            <form:input type="email" class="form-control" disabled="true"
                                                path="email" />
                                            <form:hidden path="email" />
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label class="form-label">Phone number:</label>
                                            <form:input type="text" class="form-control" path="phone" />
                                        </div>
                                        <div class="mb-3 col-12">
                                            <c:set var="errorFullName">
                                                <form:errors path="fullName" cssClass="invalid-feedback" />
                                            </c:set>
                                            <label class="form-label">Full Name:</label>
                                            <form:input type="text"
                                                class="form-control ${not empty errorFullName ? 'is-invalid' : ''}"
                                                path="fullName" />
                                            ${errorFullName}
                                        </div>

                                        <div class="mb-3 col-12">
                                            <label class="form-label">Address:</label>
                                            <form:input type="text" class="form-control" path="address" />
                                        </div>
                                        <div class="mb-3 col-12 col-md-6" style="display: none">
                                            <label class="form-label">Role:</label>
                                            <form:select class="form-select" path="role.name">
                                                <form:option value="ADMIN">ADMIN</form:option>
                                                <form:option value="USER">USER</form:option>
                                            </form:select>
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="avatarFile" class="form-label">Image:</label>
                                            <input class="form-control" type="file" id="avatarFile"
                                                accept=".png, .jpg, .jpeg" name="baothienFile" />
                                        </div>
                                        <div class="col-12 mb-3">
                                            <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                id="avatarPreview" />
                                        </div>
                                        <button type="submit" class="btn btn-warning">Cập nhật</button>
                                    </form:form>

                                </div>

                            </div>

                        </div>
                    </div>
                </main>
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

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>
            </body>

            </html>