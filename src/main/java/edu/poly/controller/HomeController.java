package edu.poly.controller;

import java.util.List;
import java.util.stream.Collectors;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.poly.interceptor.SessionAttr;
import edu.poly.model.NguoiDung;
import edu.poly.model.SanPhams;
import edu.poly.services.CookieService;
import edu.poly.services.MailerService;
import edu.poly.services.NguoiDungService;
import edu.poly.services.SanPhamService;
import edu.poly.services.SessionService;
import edu.poly.services.Impl.NguoiDungServiceImpl.UsernameDaTonTai;

@Controller
public class HomeController {

	@Autowired
	SanPhamService spService;
	@Autowired
	NguoiDungService ndService;

	@Autowired
	MailerService mailerService;

	@Autowired
	SessionService sessionService;

	@Autowired
	CookieService cookieService;

	// load admin
	@RequestMapping("/admin")
	public String admin(Model model, @RequestParam(defaultValue = "0") int page) {
		List<SanPhams> spHome = spService.getAllSanPham();
		model.addAttribute("spHome", spHome);
		return "admin/home";
	}

	// load sản phẩm index
	@RequestMapping("/")
	public String homeIndex(Model model, @RequestParam(defaultValue = "0") int page) {
		// Số sản phẩm trên mỗi trang
		int pageSize = 8; // Bạn có thể điều chỉnh kích thước trang theo ý muốn

		// Lấy một trang sản phẩm
		Page<SanPhams> spHome = spService.getAllPageSp(page, pageSize);

		// Lọc ra chỉ những sản phẩm có isHidden là false
		List<SanPhams> visibleProducts = spHome.getContent().stream().filter(p -> !p.isHidden())
				.collect(Collectors.toList());

		// Tạo một trang mới chỉ chứa các sản phẩm đã lọc
		Page<SanPhams> visiblePage = new PageImpl<>(visibleProducts);
		model.addAttribute("spHome", visiblePage);
		// model.addAttribute("spHome", spHome);
		return "user/index";

	}

	// đăng nhập
	@GetMapping("/login")
	public String loginPage() {
		return "user/login";
	}

	@PostMapping("/login")
	public String login(@RequestParam String username, @RequestParam String matKhau,
			@RequestParam(value = "rememberMe", required = false) String rememberMe, Model model,
			HttpServletResponse response) {

		NguoiDung user = ndService.findByUsernameAndMatKhau(username, matKhau);

		if (user != null) {
			// Đăng nhập thành công, lưu thông tin người dùng vào session
			sessionService.set(SessionAttr.CURRENT_USER, user); // Lưu thông tin người dùng vào session

			if ("on".equals(rememberMe)) {
				// Nếu người dùng đã chọn "Remember", lưu thông tin đăng nhập vào cookie
				cookieService.add("rememberedUser", username, 60); // Lưu trong cookie 60 s
			}

			return "redirect:/"; // Chuyển hướng đến trang chính
		} else {
			// Đăng nhập thất bại
			model.addAttribute("error", "Tên người dùng hoặc mật khẩu không chính xác.");
			return "user/login"; // Trả về trang đăng nhập với thông báo lỗi
		}
	}

	// đăng ký
	@GetMapping("/register")
	public String getDangKy(Model model) {
		model.addAttribute("dkNguoiDung", new NguoiDung());
		return "user/register";
	}

	@PostMapping("/register")
	public String processRegistrationForm(@ModelAttribute("dkNguoiDung") NguoiDung nguoiDung) {
		try {
			ndService.registerByUsername(nguoiDung);

			// Gửi email xác nhận đăng ký
			String to = nguoiDung.getEmail();
			String subject = "Xác nhận đăng ký";
			String body = "Chào mừng m tới web của hắc cu lỏ!\n";
			body += "Tên người dùng: " + nguoiDung.getUsername() + "\n";
			body += "Mật khẩu: " + nguoiDung.getMatKhau() + "\n";

			mailerService.send(to, subject, body);

			return "user/login";
		} catch (UsernameDaTonTai e) {
			// nếu user tồn tại
			return "user/register";
		} catch (MessagingException e) {
			// Nếu mail ko được
			return "error-page";
		}
	}

	// đăng xuất
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		// Xóa session
		session.invalidate();
		return "redirect:/login";
	}

	// quên mk
	@GetMapping("forgotPassword")
	public String forgotPass() {
		return "forgot";
	}

	@PostMapping("forgotPassword")
	public String forgotPass(@RequestParam("username") String username, Model model) {
		try {
			NguoiDung nguoiDung = ndService.getNguoiDungByUsername(username);
			String to = nguoiDung.getEmail();
			String email = to.substring(0, 2);

			double randomDouble = Math.random();
			randomDouble = randomDouble * 100 + 6;
			int randomInt = (int) randomDouble;

			String subject = "Lấy lại mật khẩu";
			String body = "Mật khẩu của bạn là:" + randomInt;
			mailerService.send(to, subject, body);

			nguoiDung.setMatKhau(String.valueOf(randomInt));
			ndService.saveNguoiDung(nguoiDung);

			model.addAttribute("message", "Mật khẩu mới đã được gửi đến mail " + email + "***");
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("message", "Invalid Username");
		}
		return "forgot";
	}
}
