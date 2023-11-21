package edu.poly.services;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.poly.model.DanhMucChiTiet;

@Service
public interface DanhMucChiTietService {

	List<DanhMucChiTiet> getAllDanhMucChiTiet();

	DanhMucChiTiet getDanhMucChiTietById(int id);

	DanhMucChiTiet saveDanhMucChiTiet(DanhMucChiTiet danhMucChiTiet);

	void deleteDanhMucChiTiet(int id);
}
