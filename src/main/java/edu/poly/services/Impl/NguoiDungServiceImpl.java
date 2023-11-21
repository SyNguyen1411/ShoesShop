package edu.poly.services.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.model.NguoiDung;
import edu.poly.repositories.NguoiDungRepository;
import edu.poly.services.NguoiDungService;

@Service
public class NguoiDungServiceImpl implements NguoiDungService {
	@Autowired
	NguoiDungRepository ndRepository;

	@Override
	public List<NguoiDung> getAllNguoiDung() {
		return ndRepository.findAll();
	}

	@Override
	public NguoiDung getNguoiDungByUsername(String username) {
		return ndRepository.findById(username).orElse(null);
	}

	@Override
	public NguoiDung saveNguoiDung(NguoiDung nguoiDung) {
		return ndRepository.save(nguoiDung);
	}

	@Override
	public void deleteNguoiDung(String username) {
		ndRepository.deleteById(username);

	}

	@Override
	public NguoiDung update(NguoiDung nguoiDung) {
		return ndRepository.save(nguoiDung);
	}

	// lấy user and pass
	@Override
	public NguoiDung findByUsernameAndMatKhau(String username, String matKhau) {
		return ndRepository.findByUsernameAndMatKhau(username, matKhau);
	}

	// lấy user
	@Override
	public NguoiDung findUserByUsername(String username) {
		return ndRepository.findByUsername(username);
	}

	// bắt ngoại lệ
	public class UsernameDaTonTai extends RuntimeException {
		public UsernameDaTonTai(String message) {
			super(message);
		}
	}

	@Override
	public void registerByUsername(NguoiDung nguoiDung) {
		// Kiểm tra xem tên người dùng đã tồn tại chưa
		if (ndRepository.existsByUsername(nguoiDung.getUsername())) {
			throw new UsernameDaTonTai("Tên người dùng đã tồn tại.");
		}
		else {
            // cho isAdmin là false mặc định
            nguoiDung.setAdmin(false);
            //Lưu vào data
            ndRepository.save(nguoiDung);
        }
	}

}
