package edu.poly.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.poly.model.DonHangChiTiet;

@Repository
public interface DonHangChiTietRepository extends JpaRepository<DonHangChiTiet, Integer> {
//	Optional<DonHangChiTiet> findByIdSPAndIdDH(int idSP, int idDH);
//
//	Optional<DonHangChiTiet> deleteByIdSPAndIdDH(int idSP, int idDH);

//	List<DonHangChiTiet> findByIdSP(int IdSP);
//
//	List<DonHangChiTiet> findByIdDH(int IdDH);
}
