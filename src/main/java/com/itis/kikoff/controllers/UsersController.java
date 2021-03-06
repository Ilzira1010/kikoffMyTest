package com.itis.kikoff.controllers;

import com.itis.kikoff.dto.UserDto;
import com.itis.kikoff.services.users.UsersService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class UsersController {

    @Autowired
    private UsersService usersService;


    @GetMapping("/users")
    @ResponseBody
    public ResponseEntity<List<UserDto>> getAllUsers() {
        return ResponseEntity.ok(usersService.getAllUsers());
    }

    // GET users/3
    @GetMapping("/users/{user-id}")
    @ResponseBody
    public ResponseEntity<UserDto> getUserById(@PathVariable("user-id") Long userId) {
        return ResponseEntity.ok(usersService.getUserById(userId));
    }


    @ApiOperation(value = "Добавление юзера")
    @ApiResponses(value = {@ApiResponse(code = 200, message = "Успешно добавлено", response = UserDto.class)})
    @PostMapping("/users")
    public ResponseEntity<UserDto> addUser(@RequestBody UserDto user) {
        return ResponseEntity.ok(usersService.addUser(user));
    }

    @PutMapping("/users/{user-id}")
    public ResponseEntity<UserDto> updateUser(@PathVariable("user-id") Long userId, @RequestBody UserDto user) {
        return ResponseEntity.ok(usersService.updateUser(userId, user));
    }

    @DeleteMapping("/users/{user-id}")
    public ResponseEntity<?> deleteUser(@PathVariable("user-id") Long userId) {
        usersService.deleteUser(userId);
        return ResponseEntity.ok().build();
    }
}


