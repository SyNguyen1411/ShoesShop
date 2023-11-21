package edu.poly.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.poly.model.SanPhams;

@Repository
public interface SanPhamRepository extends JpaRepository<SanPhams, Integer>{
}
