package edu.poly.services;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.poly.model.DanhMucCon;

@Service
public interface DanhMucConService {
	List<DanhMucCon> getAllDanhMucCon();

	DanhMucCon getDanhMucConById(int id);

	DanhMucCon saveDanhMucCon(DanhMucCon danhMucCon);

	void deleteDanhMucCon(int id);
}
