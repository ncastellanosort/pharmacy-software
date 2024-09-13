/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pr.farmacia.Persistence;

import com.mycompany.pr.farmacia.Entities.User;

/**
 *
 * @author Nicolas
 */
public class PersistenceUserController {

    UserJpaController userJpaController = new UserJpaController();

    public void createUser(User user) {
        userJpaController.create(user);
    }

    public User getUserEmail(String email) {
        return userJpaController.getByEmail(email);
    }
}
