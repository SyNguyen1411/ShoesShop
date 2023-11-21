package edu.poly.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "SanPham")
public class SanPhams implements Serializable{
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IdSP")
    private int idSP;

    @ManyToOne
    @JoinColumn(name = "IdND")
    private NguoiDung nguoiDung;

    @Column(name = "TenSP")
    private String tenSP;

    @Column(name = "Gia")
    private double gia;

    @Column(name = "GiamGia")
    private Integer giamGia;

    @Column(name = "MoTa")
    private String moTa;

    @Column(name = "Img")
    private String img;

    @Column(name = "NgayTao")
    private Date ngayTao;

    @Column(name = "NgayEdit")
    private Date ngayEdit;
    
    @Column(name = "isHidden")
    
    private boolean hidden;
    
   
    
//    public Date getNgayTao() {
//        return new Date();
//    }


	
    
    
	
}
