package edu.poly.services;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.poly.model.DanhMuc;

@Service
public interface DanhMucService {
	List<DanhMuc> getAllDanhMuc();

	DanhMuc getDanhMucById(int id);

	DanhMuc saveDanhMuc(DanhMuc danhMuc);

	void deleteDanhMuc(int id);
}
