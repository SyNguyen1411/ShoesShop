package edu.poly.services.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.model.DanhMucCon;
import edu.poly.repositories.DanhMucConRepository;
import edu.poly.services.DanhMucConService;

@Service
public class DanhMucConServiceImpl implements DanhMucConService{


    @Autowired
    DanhMucConRepository dmcRepository;

    @Override
    public List<DanhMucCon> getAllDanhMucCon() {
        return dmcRepository.findAll();
    }

    @Override
    public DanhMucCon getDanhMucConById(int id) {
        return dmcRepository.findById(id).orElse(null);
    }

    @Override
    public DanhMucCon saveDanhMucCon(DanhMucCon danhMucCon) {
        return dmcRepository.save(danhMucCon);
    }

    @Override
    public void deleteDanhMucCon(int id) {
    	dmcRepository.deleteById(id);
    }

}
