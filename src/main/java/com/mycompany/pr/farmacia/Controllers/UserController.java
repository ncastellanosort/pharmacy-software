/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pr.farmacia.Controllers;

import com.mycompany.pr.farmacia.Entities.User;
import com.mycompany.pr.farmacia.Persistence.PersistenceUserController;

/**
 *
 * @author Nicolas
 */
public class UserController {

    PersistenceUserController persistenceController = new PersistenceUserController();

    public void createUserController(User user) {
        persistenceController.createUser(user);
    }

    public User getUserEmailController(String email) {
        return persistenceController.getUserEmail(email);
    }
}
