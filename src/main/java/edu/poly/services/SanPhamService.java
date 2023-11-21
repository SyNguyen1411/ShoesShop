package edu.poly.services;

import java.util.List;

import org.springframework.data.domain.Page;

import edu.poly.model.SanPhams;

public interface SanPhamService {
	List<SanPhams> getAllSanPham();

	SanPhams getSanPhamById(int id);

	SanPhams saveSanPham(SanPhams sanPham);

	void deleteSanPham(int id);

	Page<SanPhams> getAllPageSp(int page, int pageSize);
	
	// ẩn sản phẩm
	public void hideSanPham(int id);
	
	// hiện sản phẩm 
	public void showSanPham(int id);
}
