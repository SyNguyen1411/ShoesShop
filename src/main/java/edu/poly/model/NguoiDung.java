package edu.poly.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity(name = "NguoiDung")
@Table(name = "NguoiDung")
public class NguoiDung implements Serializable {
	@Id
    @Column(name = "Username")
    private String username;

    @Column(name = "TenND")
    private String tenND;

    @Column(name = "MatKhau")
    private String matKhau;

    @Column(name = "Email")
    private String email;

    @Column(name = "DiaChi")
    private String diaChi;

    @Column(name = "Sdt")
    private String sdt;

    @Column(name = "isAdmin")
    private boolean isAdmin;
}
