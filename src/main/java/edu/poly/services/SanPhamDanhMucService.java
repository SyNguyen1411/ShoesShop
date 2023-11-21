package edu.poly.services;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.poly.model.SanPhamDanhMuc;

@Service
public interface SanPhamDanhMucService {

	List<SanPhamDanhMuc> getAllSanPhamDanhMuc();

	SanPhamDanhMuc getSanPhamDanhMucById(int id);

	SanPhamDanhMuc saveSanPhamDanhMuc(SanPhamDanhMuc sanPhamDanhMuc);

	void deleteSanPhamDanhMuc(int id);
}
