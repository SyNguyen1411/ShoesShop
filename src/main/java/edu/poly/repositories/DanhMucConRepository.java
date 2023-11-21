package edu.poly.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.poly.model.DanhMucCon;

@Repository
public interface DanhMucConRepository extends JpaRepository<DanhMucCon, Integer>{
}
