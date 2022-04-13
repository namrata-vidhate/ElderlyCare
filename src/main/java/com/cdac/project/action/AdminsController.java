package com.cdac.project.action;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cdac.project.entity.Admin;
import com.cdac.project.repository.AdminsRepository;



//@CrossOrigin(origins = "http://localhost:3000")
@CrossOrigin("*")
@RestController
@RequestMapping("/api")
public class AdminsController {

	@Autowired
	private AdminsRepository adminsRepository;
	
//	@PostMapping("/admin")
//	public HashMap<String, String> admin(@RequestBody Admin adm) {
//		HashMap<String, String> map = new HashMap<>();
//		map.put("userId", "0");
//
//		Optional<Admin> adminLogin = adminsRepository.getUserByUsernameAndPassword(adm.getEmailId(),adm.getPassword());
//		if (adminLogin.isPresent()) {
//			map.replace("userId", adminsRepository.getUserIdByEmail(adm.getEmailId()).toString());
//		    map.put("role", "admin");
//			return map;
//		}
//		return map;
//	}
	
	
	@GetMapping("/admin/{id}")
	public ResponseEntity<Admin> getAdminById(@PathVariable Long id) {
		Admin adm = adminsRepository.findById(id).orElseThrow();
		return ResponseEntity.ok(adm);
	}
	
	
	@PostMapping("/admin")
	public Map<String, String> login(@RequestBody  Admin adm) {
		HashMap<String, String> map = new HashMap<>();
//		 map.put("userId", "0");
		 map.put("userId", "0");
		Optional<Admin> adminLogin = adminsRepository.getUserByUsernameAndPassword(adm.getUser_name(),adm.getPassword());
		if (adminLogin.isPresent()) {
			// rederect to home
			
		    map.replace("userId", adminsRepository.getUserById(adm.getUser_name()).toString());
//			map.replace("status","1");
//		    map.put("role", usersRepository.findRoleByUserId(user.getUser_name()));
			map.put("role", "admin");
			return map;
		}
		return map;
	}
}