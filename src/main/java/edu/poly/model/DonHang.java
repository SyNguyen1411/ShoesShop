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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "DonHang")
public class DonHang implements Serializable {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "IdDH")
    private int idDH;

    @ManyToOne
    @JoinColumn(name = "IdND")
    private NguoiDung nguoiDung;

    @Column(name = "TenNguoiNhan")
    private String tenNguoiNhan;

    @Column(name = "DiaChiGiao")
    private String diaChiGiao;

    @Column(name = "SdtNguoiNhan")
    private String sdtNguoiNhan;

    @Column(name = "NgayDat")
    private Date ngayDat;

    @Column(name = "TrangThai")
    private boolean trangThai;

    @Column(name = "TongTien")
    private double tongTien;
}
