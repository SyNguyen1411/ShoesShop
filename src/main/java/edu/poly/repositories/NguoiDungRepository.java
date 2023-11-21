package edu.poly.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import edu.poly.model.NguoiDung;

@Repository
public interface NguoiDungRepository extends JpaRepository<NguoiDung, String> {

	// tìm kiếm
	NguoiDung findByUsernameAndMatKhau(String username, String matKhau);

	NguoiDung findByUsername(String username);

	NguoiDung findByTenND(String tenND);
	// đang ký
	boolean existsByUsername(String username);
}
