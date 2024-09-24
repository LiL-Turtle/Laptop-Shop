package vn.lil_turtle.laptopshop.controller.client;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import vn.lil_turtle.laptopshop.domain.Order;
import vn.lil_turtle.laptopshop.domain.Product;
import vn.lil_turtle.laptopshop.domain.User;
import vn.lil_turtle.laptopshop.domain.dto.RegisterDTO;
import vn.lil_turtle.laptopshop.service.OrderService;
import vn.lil_turtle.laptopshop.service.ProductService;
import vn.lil_turtle.laptopshop.service.UploadService;
import vn.lil_turtle.laptopshop.service.UserService;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class HomePageController {

    private final ProductService productService;
    private UserService userService;
    private final PasswordEncoder passwordEncoder;
    private final OrderService orderService;
    private final UploadService uploadService;

    public HomePageController(ProductService productService,
            UserService userService, PasswordEncoder passwordEncoder,
            OrderService orderService,
            UploadService uploadService) {
        this.productService = productService;
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
        this.orderService = orderService;
        this.uploadService = uploadService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        Pageable pageable = PageRequest.of(0, 10);
        Page<Product> products = productService.fetchProducts(pageable);
        List<Product> listProduct = products.getContent();
        model.addAttribute("products", listProduct);
        return "client/homepage/show";
    }

    @GetMapping("/register")
    public String getRegisterPage(Model model) {
        model.addAttribute("registerUser", new RegisterDTO());
        return "client/auth/register";
    }

    @PostMapping("/register")
    public String handleRegister(@ModelAttribute("registerUser") @Valid RegisterDTO registerDTO,
            BindingResult bindingResult) {

        // validate
        if (bindingResult.hasErrors()) {
            return "client/auth/register";
        }

        User user = this.userService.RegisterDTOtoUser(registerDTO);

        String hashPassword = this.passwordEncoder.encode(user.getPassword());
        user.setPassword(hashPassword);
        user.setRole(this.userService.getRoleByName("USER"));
        // save
        this.userService.handleSaveUser(user);
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String getLoginPage(Model model) {

        return "client/auth/login";
    }

    @GetMapping("/access-deny")
    public String getDenyPage(Model model) {

        return "client/auth/deny";
    }

    @GetMapping("/order-history")
    public String getOrderHistoryPage(Model model, HttpServletRequest request) {
        User currentUser = new User();
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);

        List<Order> orders = this.orderService.fetchOrderByUser(currentUser);
        model.addAttribute("orders", orders);

        return "client/cart/order-history";
    }

    @GetMapping("/about-us")
    public String getAboutUsPage(Model model) {
        return "client/information/aboutUs";
    }

    @GetMapping("/my-account")
    public String getInformationPage(Model model, HttpServletRequest request) {
        User currentUser = new User();
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);

        User user = this.userService.getUserById(currentUser.getId());
        model.addAttribute("user", user);
        return "client/information/myAccount";
    }

    @RequestMapping("/my-account/update")
    public String getUpdateUserPage(Model model, HttpServletRequest request) {
        User currentUser = new User();
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);
        User updateUser = this.userService.getUserById(currentUser.getId());
        model.addAttribute("newUser", updateUser);
        return "client/information/updateUser";
    }

    @PostMapping("/my-account/update")
    public String postUpdateUser(Model model, @ModelAttribute("newUser") @Valid User updateUser,
            HttpServletRequest request,
            BindingResult newUserBindingResult,
            @RequestParam("baothienFile") MultipartFile file) {
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        updateUser.setId(id);
        List<FieldError> errors = newUserBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(error.getField() + " - " + error.getDefaultMessage());
        }
        // Validate
        if (newUserBindingResult.hasErrors()) {
            return "/my-account/update";
        }
        //
        User currentUser = this.userService.getUserById(updateUser.getId());
        if (currentUser != null) {
            if (!file.isEmpty()) {
                String img = this.uploadService.handleSaveUpLoadFile(file, "avatar");
                currentUser.setAvatar(img);
            }
            currentUser.setFullName(updateUser.getFullName());
            currentUser.setAddress(updateUser.getAddress());
            currentUser.setPhone(updateUser.getPhone());
            this.userService.handleSaveUser(currentUser);
        }
        return "redirect:/my-account";
    }
}
