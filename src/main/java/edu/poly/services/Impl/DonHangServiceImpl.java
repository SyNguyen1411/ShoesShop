package edu.poly.services.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.model.DanhMuc;
import edu.poly.model.DonHang;
import edu.poly.repositories.DonHangRepository;
import edu.poly.services.DonHangService;

@Service
public class DonHangServiceImpl implements DonHangService {
	

    @Autowired
    DonHangRepository dhRepository;

    @Override
    public List<DonHang> getAllDonHang() {
        return dhRepository.findAll();
    }

    @Override
    public DonHang getDonHangById(int id) {
        return dhRepository.findById(id).orElse(null);
    }

    @Override
    public DonHang saveDonHang(DonHang donHang) {
        return dhRepository.save(donHang);
    }

    @Override
    public void deleteDonHang(int id) {
    	dhRepository.deleteById(id);
    }
	

}
