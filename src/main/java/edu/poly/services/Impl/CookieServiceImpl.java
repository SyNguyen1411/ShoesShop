package edu.poly.services.Impl;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.services.CookieService;

@Service
public class CookieServiceImpl implements CookieService {

	@Autowired
	HttpServletRequest request;

	@Autowired
	HttpServletResponse response;

	/**
	 * Đọc cookie từ request
	 * 
	 * @param name tên cookie cần đọc
	 * @return đối tượng cookie đọc được hoặc null nếu không tồn tại
	 */

	@Override
	public Cookie get(String name) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals(name)) {
					return cookie;
				}
			}
		}
		return null;
	}

	/**
	 * Đọc giá trị của cookie từ request
	 * 
	 * @param name tên cookie cần đọc
	 * @return chuỗi giá trị đọc được hoặc rỗng nếu không tồn tại
	 */

	@Override
	public String getValue(String name) {
		Cookie cookie = get(name);
		return (cookie != null) ? cookie.getValue() : "";
	}

	/**
	 * Tạo và gửi cookie về client
	 * 
	 * @param name  tên cookie
	 * @param value giá trị cookie
	 * @param hours thời hạn (giờ)
	 * @return đối tượng cookie đã tạo
	 */

	@Override
	public Cookie add(String name, String value, int hours) {
		Cookie cookie = new Cookie(name, value);
		// cookie.setMaxAge(hours * 60 * 60); // Chuyển đổi giờ thành giây
		cookie.setMaxAge(hours);
		response.addCookie(cookie);
		return cookie;
	}

	@Override
	public void remove(String name) {
		Cookie cookie = get(name);
		if (cookie != null) {
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}

	}

}
