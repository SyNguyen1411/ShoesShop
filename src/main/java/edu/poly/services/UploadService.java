package edu.poly.services;

import java.io.File;
import java.nio.file.Files;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface UploadService {
	File save(MultipartFile file, String folder);
	void delete(String folder, String name);
	List<File> save(MultipartFile[] files, String folder);
}
