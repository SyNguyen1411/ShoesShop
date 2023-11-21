package edu.poly.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.poly.model.DanhMucChiTiet;

@Repository
public interface DanhMucChiTietRepository extends JpaRepository<DanhMucChiTiet, Integer> {
//	Optional<DanhMucChiTiet> findByIdDMCConAndIdDM(int idDMC, int idDM);
//
//	Optional<DanhMucChiTiet> deleteByIdDMCConAndIdDM(int idDMC, int idDM);
//
//	List<DanhMucChiTiet> findByIdDM(int IdDM);
//
//	List<DanhMucChiTiet> findByIdDMC(int IdDMC);
}
