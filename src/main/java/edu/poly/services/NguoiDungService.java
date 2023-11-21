package edu.poly.services;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.poly.model.NguoiDung;

@Service
public interface NguoiDungService {
	List<NguoiDung> getAllNguoiDung();

	NguoiDung getNguoiDungByUsername(String username);

	NguoiDung saveNguoiDung(NguoiDung nguoiDung);

	void deleteNguoiDung(String username);

	NguoiDung update(NguoiDung nguoiDung);

	// lấy user and pass
	NguoiDung findByUsernameAndMatKhau(String username, String matKhau);
	
	// lấy user
	NguoiDung findUserByUsername(String username);
	
	//đăng ký 
	
	public void registerByUsername(NguoiDung nguoiDung);
}
