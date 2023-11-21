package edu.poly.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "DonHangChiTiet")
//@IdClass(DonHangChiTietId.class)
public class DonHangChiTiet implements Serializable {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name = "Id")
	    private int id;

	    @ManyToOne
	    @JoinColumn(name = "IdDH")
	    private DonHang donHang;

	    @ManyToOne
	    @JoinColumn(name = "IdSP")
	    private SanPhams sanPham;

	    @Column(name = "SoLuong")
	    private int soLuong;

	    @Column(name = "Gia")
	    private double gia;

}
