package edu.poly.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.poly.model.SanPhamDanhMuc;

@Repository
public interface SanPhamDanhMucRepository extends JpaRepository<SanPhamDanhMuc, Integer>{
//	Optional<SanPhamDanhMuc> findByIdSPAndIdDMC(int idSP, int idDCM);
//	Optional<SanPhamDanhMuc> deleteByIdSPAndIdDMC(int idSP, int idDCM);
	
//	List<SanPhamDanhMuc> findByIdSP(int idSP);
//	
//	List<SanPhamDanhMuc> findByIdDMC(int idDMC);
}
