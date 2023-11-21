package edu.poly.services;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.poly.model.DonHangChiTiet;

@Service
public interface DonHangChiTietService {

	List<DonHangChiTiet> getAllDonHangChiTiet();

	DonHangChiTiet getDonHangChiTietById(int id);

	DonHangChiTiet saveDonHangChiTiet(DonHangChiTiet donHangChiTiet);

	void deleteDonHangChiTiet(int id);
}
