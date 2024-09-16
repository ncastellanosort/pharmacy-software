/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pr.farmacia.Controllers;

import com.mycompany.pr.farmacia.Entities.Provider;
import com.mycompany.pr.farmacia.Persistence.PersistenceProviderController;
import com.mycompany.pr.farmacia.Persistence.exceptions.NonexistentEntityException;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class ProviderController {
    
    PersistenceProviderController persistenceProviderController = new PersistenceProviderController();
    
    public List<Provider> getProvidersController() {
        return persistenceProviderController.getProviders();
    }
    
    public int getAmountProvidersController() {
        return persistenceProviderController.getAmountProviders();
    }
    
    public void registerProviderController(Provider provider) {
        persistenceProviderController.registerProvider(provider);
    }
    
    public void deleleProviderController(int id) throws NonexistentEntityException {
        persistenceProviderController.deleteProvider(id);
    }
    
    public void editProviderController(Provider provider) throws Exception {
        persistenceProviderController.editProvider(provider);
    }
    
    public Provider getProviderController(int id) {
        return persistenceProviderController.getProvider(id);
    }
    
}
