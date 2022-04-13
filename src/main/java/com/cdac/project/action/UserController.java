package com.cdac.project.action;



import java.util.HashMap;
import java.util.List;
import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cdac.project.entity.User;
import com.cdac.project.repository.UserRepository;



@CrossOrigin(origins = "http://localhost:3000")

@RestController
@RequestMapping("/api")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    // get all users
    @GetMapping("/users")
    public List<User> getAllRooms() {
        return userRepository.findAll();
    }

    // add room to database
    @PostMapping("/users/add")
    public ResponseEntity<Map<String, Boolean>> addRoom(@RequestBody User user) {
    	userRepository.save(user);
        Map<String, Boolean> response = new HashMap<>();
        response.put("added", Boolean.TRUE);
		return ResponseEntity.ok(response);
    }

//    // get rooms by offer id
//    @GetMapping("/offers/{offer_id}/rooms")
//    public List<Rooms> getAllRoo(@PathVariable Long offer_id) {
//        return userRepository.getRoomsByOfferId(offer_id);
//    }
//
//    // delete Room
//    @GetMapping("/delete/{room_id}")
//    public void deleteRoomById(@PathVariable Long room_id) {
//        roomRepository.deleteById(room_id);
//    }
//
//    // update room :
//    @PostMapping("/rooms/{id}/update")
//    public ResponseEntity<Rooms> updateOldRoom(@PathVariable Long id, @RequestBody Rooms room) {
//
//        Rooms Oldroom = roomRepository.findById(id).orElseThrow();
//        Oldroom.setPrice(room.getPrice());
//        Oldroom.setEquipment(room.getEquipment());
//        Oldroom.setNbr_bed_dispo(room.getNbr_bed_dispo());
//        Oldroom.setOffer(room.getOffer());
//        // Oldroom.setImage1(room.getImage1());
//        // Oldroom.setImage2(room.getImage2());
//        Oldroom.setIntitule(room.getIntitule());
//        Oldroom.setNbr_personne(room.getNbr_personne());
//        // Oldroom.setRoom_id(Oldroom.getRoom_id());
//
//        Rooms updatedOldRoom = roomRepository.save(Oldroom);
//        return ResponseEntity.ok(updatedOldRoom);
//    }
}
