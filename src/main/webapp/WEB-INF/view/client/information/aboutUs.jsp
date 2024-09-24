<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <title> Giỏ hàng - Laptopshop</title>
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">
                    <meta content="" name="keywords">
                    <meta content="" name="description">

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

                <body>

                    <!-- Spinner Start -->
                    <div id="spinner"
                        class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
                        <div class="spinner-grow text-primary" role="status"></div>
                    </div>
                    <!-- Spinner End -->

                    <jsp:include page="../layout/header.jsp" />

                    <!-- Cart Page Start -->
                    <div class="container-fluid py-5">
                        <div class="container py-5">
                            <div class="mb-3">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">About Us</li>
                                    </ol>
                                </nav>
                            </div>
                            <div class="responsive">
                                <div class="px-5 text-success fs-1">
                                    <div>
                                        <h2 class="justify-content-center">Laptopshop – Cửa hàng trực tuyến chuyên cung
                                            cấp
                                            Laptop chính hãng</h2>
                                    </div>
                                    <div class="fs-5">Laptopshop là nền tảng bán hàng trực tuyến chuyên cung cấp các
                                        dòng laptop chất
                                        lượng cao từ các thương hiệu uy tín như
                                        Dell, HP, Asus, Apple, Lenovo,... Chúng tôi cam kết mang đến cho khách hàng
                                        những sản phẩm chính hãng, với giá cả cạnh
                                        tranh cùng dịch vụ hậu mãi chu đáo.</div>
                                    <div>
                                        <h3>Các tính năng nổi bật của Laptopshop</h3>
                                    </div>
                                    <div class="fs-5">
                                        <li>Đa dạng sản phẩm: Cung cấp nhiều mẫu laptop đáp ứng mọi nhu cầu từ văn
                                            phòng,
                                            gaming cho đến đồ họa chuyên nghiệp.</li>
                                        <li>Giao diện thân thiện: Website được thiết kế với giao diện đơn giản, dễ sử
                                            dụng,
                                            giúp khách hàng dễ dàng tìm kiếm và so
                                            sánh sản phẩm.</li>
                                        <li>Chính sách bảo hành uy tín: Bảo hành chính hãng từ 1 đến 2 năm cho tất cả
                                            các
                                            sản phẩm.
                                        </li>
                                        <li>Hỗ trợ tư vấn 24/7: Đội ngũ tư vấn viên luôn sẵn sàng hỗ trợ, giải đáp mọi
                                            thắc
                                            mắc về sản phẩm và dịch vụ.
                                        </li>
                                        <li>Thanh toán an toàn: Hỗ trợ nhiều hình thức thanh toán an toàn và bảo mật.
                                        </li>
                                        <li>Giao hàng toàn quốc: Dịch vụ giao hàng nhanh chóng, an toàn đến mọi miền tổ
                                            quốc.
                                        </li>
                                    </div>
                                    <div>
                                        <h3>Tại sao chọn Laptopshop?</h3>
                                    </div>
                                    <div class="fs-5">
                                        <li>Giá cả hợp lý: Laptopshop cam kết cung cấp sản phẩm với mức giá cạnh tranh
                                            nhất
                                            trên thị trường.</li>
                                        <li>Chương trình khuyến mãi hấp dẫn: Thường xuyên có các chương trình giảm giá,
                                            quà
                                            tặng khi mua hàng.</li>
                                        <li>Sản phẩm chính hãng: Chúng tôi chỉ cung cấp các sản phẩm laptop được phân
                                            phối
                                            chính thức từ các nhà sản xuất uy tín.
                                        </li>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Cart Page End -->


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