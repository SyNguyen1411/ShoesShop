package edu.poly.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.poly.interceptor.SessionAttr;
import edu.poly.model.DonHang;
import edu.poly.model.NguoiDung;
import edu.poly.model.SanPhams;
import edu.poly.services.DonHangService;
import edu.poly.services.NguoiDungService;
import edu.poly.services.SanPhamService;
import edu.poly.services.UploadService;

@Controller
public class SanPhamController {
	@Autowired
	SanPhamService spService;
	@Autowired
	NguoiDungService ndService;
	@Autowired
	UploadService uploadService;
	
	@Autowired
	DonHangService donHangService;

	// Chi tiết sản phẩm bên index
	@RequestMapping("ctSanPham/{id}")
	public String chiTietSanPham(@PathVariable int id, Model model) {
		SanPhams ctSanPham = spService.getSanPhamById(id);

		model.addAttribute("ctSanPham", ctSanPham);
		return "user/chitietsp";
	}

// load sp table
	@RequestMapping("/adminSp")
	public String listProducts(Model model) {

		List<SanPhams> adminSp = spService.getAllSanPham();
		model.addAttribute("adminSp", adminSp);
		return "admin/adminSp"; // Trả về trang hiển thị danh sách sản phẩm
	}
	
	// load sp table
		@RequestMapping("/report-doanhthu")
		public String reportDoanhThu(Model model) {
//
			List<DonHang> orders = donHangService.getAllDonHang();
			model.addAttribute("orders", orders);
			System.out.println(orders.size());
			return "admin/report-doanhthu"; // Trả về trang hiển thị danh sách sản phẩm
		}

	// Xử lý thêm sản phẩm
	@RequestMapping("adminSp/add")
	public String addProduct(@ModelAttribute SanPhams product, @RequestParam("imageFile") MultipartFile imageFile,
			RedirectAttributes redirectAttributes, HttpSession session) {
		
		try {
			NguoiDung currentUser = (NguoiDung) session.getAttribute(SessionAttr.CURRENT_USER);

				// Tạo một đối tượng Date hiện tại
				Date currentDate = new Date();

				// Sử dụng đối tượng Date để cung cấp giá trị cho cột 'NgayTao'
				product.setNgayTao(currentDate);

				// Liên kết sản phẩm với người dùng hiện tại
				product.setNguoiDung(currentUser);

				// Lưu sản phẩm vào cơ sở dữ liệu
				SanPhams savedProduct = spService.saveSanPham(product);

				// Lưu hình ảnh sản phẩm
				File image = uploadService.save(imageFile, "products");

				if (image != null) {
					// Lưu tên hình ảnh vào sản phẩm
					savedProduct.setImg(image.getName());
					spService.saveSanPham(savedProduct);

					redirectAttributes.addFlashAttribute("successMessage", "Thêm sản phẩm thành công.");
				} else {
					redirectAttributes.addFlashAttribute("errorMessage", "Thêm sản phẩm thất bại.");
				}
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("errorMessage",
					"Thêm sản phẩm thất bại sản phẩm đã tồn tại: " + e.getMessage());
		}

		return "redirect:/adminSp";
	}

	// lấy id
	@RequestMapping("/adminSp/edit/{id}")
	public String editProductForm(@PathVariable int id, Model model, RedirectAttributes redirectAttributes) {
		SanPhams item = spService.getSanPhamById(id);

		if (item != null) {
			model.addAttribute("item", item);
			List<SanPhams> adminSp = spService.getAllSanPham();
			model.addAttribute("adminSp", adminSp);
			return "admin/adminSp";
		} else {
			redirectAttributes.addFlashAttribute("errorMessage", "Không tìm thấy sản phẩm với ID " + id);
			return "redirect:/adminSp"; // Hoặc chuyển hướng đến trang bạn muốn xử lý lỗi.
		}
	}

// cập nhật
	@RequestMapping("adminSp/update")
	public String editProduct(@ModelAttribute SanPhams item, @RequestParam("imageFile") MultipartFile imageFile,
			RedirectAttributes redirectAttributes) {
		SanPhams existingItem = spService.getSanPhamById(item.getIdSP());
		if (existingItem == null) {
			redirectAttributes.addFlashAttribute("errorMessage", "Không tìm thấy sản phẩm với ID " + item.getIdSP());
			return "redirect:/adminSp";
		}

		// Lấy ngày hiện tại
		Date currentDate = new Date();

		// Cập nhật thông tin sản phẩm
		existingItem.setTenSP(item.getTenSP());
		existingItem.setGia(item.getGia());
		existingItem.setMoTa(item.getMoTa());

		// Lưu ngày chỉnh sửa vào sản phẩm
		existingItem.setNgayEdit(currentDate);

		// Lưu sản phẩm vào cơ sở dữ liệu
		spService.saveSanPham(existingItem);

		// Lưu hình ảnh sản phẩm nếu có
		if (!imageFile.isEmpty()) {
			File image = uploadService.save(imageFile, "products");
			// Lưu tên hình ảnh vào sản phẩm
			existingItem.setImg(image.getName());
			spService.saveSanPham(existingItem);
		}
		redirectAttributes.addFlashAttribute("successMessage", "Cập nhật sản phẩm thành công.");

		return "redirect:/adminSp/edit/" + item.getIdSP();
	}

	// xóa sản phẩm
//	@RequestMapping("adminSp/delete/{id}")
//	public String deleteProduct(@PathVariable int id, RedirectAttributes redirectAttributes) {
//	    try {
//	        spService.deleteSanPham(id);
//	        redirectAttributes.addFlashAttribute("successMessage", "Sản phẩm đã được xóa thành công.");
//	    } catch (DataIntegrityViolationException e) {
//	        // Nếu xảy ra lỗi do ràng buộc tham chiếu (ví dụ: foreign key constraint)
//	        redirectAttributes.addFlashAttribute("errorMessage", "Không thể xóa sản phẩm vì nó đang có tham chiếu từ bảng khác.");
//	    } catch (Exception e) {
//	        // Xử lý các lỗi khác (nếu có)
//	        redirectAttributes.addFlashAttribute("errorMessage", "Xóa sản phẩm không thành công.");
//	    }
//	    return "redirect:/adminSp";
//	}

	// ẩn sản phẩm
	@PostMapping("adminSp/delete/{id}")
	public String hideSanPham(@PathVariable int id, RedirectAttributes redirectAttributes) {
		try {
			spService.hideSanPham(id);
			redirectAttributes.addFlashAttribute("successMessage", "Sản phẩm đã được ẩn thành công.");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("errorMessage", "Không thể ẩn sản phẩm. Lỗi: " + e.getMessage());
		}
		return "redirect:/adminSp";
	}

	// hiện sản phẩm

	@PostMapping("/adminSp/show/{id}")
	public String showSanPham(@PathVariable int id, RedirectAttributes redirectAttributes) {
		try {
			spService.showSanPham(id);
			redirectAttributes.addFlashAttribute("successMessage", "Sản phẩm đã được hiển thị thành công.");
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("errorMessage", "Không thể hiển thị sản phẩm. Lỗi: " + e.getMessage());
		}
		return "redirect:/adminSp";
	}

}
