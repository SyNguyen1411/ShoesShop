package edu.poly.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.poly.model.DonHang;

@Repository
public interface DonHangRepository extends JpaRepository<DonHang, Integer>{
}
