package edu.poly.services.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.model.DanhMuc;
import edu.poly.model.DanhMucChiTiet;
import edu.poly.repositories.DanhMucChiTietRepository;
import edu.poly.repositories.DanhMucRepository;
import edu.poly.services.DanhMucService;

@Service
public class DanhMucServiceImpl implements DanhMucService {

	@Autowired
	DanhMucRepository dmRepository;

	@Override
	public List<DanhMuc> getAllDanhMuc() {
		return dmRepository.findAll();
	}

	@Override
	public DanhMuc getDanhMucById(int id) {
		return dmRepository.findById(id).orElse(null);
	}

	@Override
	public DanhMuc saveDanhMuc(DanhMuc danhMuc) {
		return dmRepository.save(danhMuc);
	}

	@Override
	public void deleteDanhMuc(int id) {
		dmRepository.deleteById(id);

	}

}
