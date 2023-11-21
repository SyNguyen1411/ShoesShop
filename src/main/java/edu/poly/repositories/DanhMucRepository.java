package edu.poly.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.poly.model.DanhMuc;

@Repository
public interface DanhMucRepository extends JpaRepository<DanhMuc, Integer>{
}
