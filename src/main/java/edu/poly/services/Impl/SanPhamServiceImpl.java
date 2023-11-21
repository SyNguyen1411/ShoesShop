package edu.poly.services.Impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import edu.poly.model.SanPhams;
import edu.poly.repositories.SanPhamRepository;
import edu.poly.services.SanPhamService;

@Service
public class SanPhamServiceImpl implements SanPhamService {
	

    @Autowired
    SanPhamRepository spRepository;
    

	@Override
	public List<SanPhams> getAllSanPham() {
		return spRepository.findAll();
	}

	@Override
	public SanPhams getSanPhamById(int id) {
		return spRepository.findById(id).get();
	}

	@Override
	public SanPhams saveSanPham(SanPhams sanPham) {
		return spRepository.save(sanPham);
	}

	@Override
	public void deleteSanPham(int id) {
		spRepository.deleteById(id);
		
	}

	@Override
	public Page<SanPhams> getAllPageSp(int page, int pageSize) {
		 Pageable pageable = PageRequest.of(page, pageSize);
	        return spRepository.findAll(pageable);
	}

	
	// ẩn sản phẩm
	@Override
	public void hideSanPham(int id) {
		SanPhams sanPham = spRepository.findById(id).orElse(null);
        if (sanPham != null) {
        	sanPham.setHidden(true);
            spRepository.save(sanPham);
        }
		
	}

	// hiện sản phẩm
	@Override
	public void showSanPham(int id) {
		SanPhams sanPham = spRepository.findById(id).orElse(null);
        if (sanPham != null) {
        	sanPham.setHidden(false);
            spRepository.save(sanPham);
        }
		
	}
	

}
