/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.pr.farmacia.Persistence;

import com.mycompany.pr.farmacia.Entities.Provider;
import com.mycompany.pr.farmacia.Persistence.exceptions.NonexistentEntityException;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class PersistenceProviderController {
    
    ProviderJpaController providerJpaController = new ProviderJpaController();
    
    public List<Provider> getProviders() {
        return providerJpaController.findProviderEntities();
    }
    
    public int getAmountProviders() {
        return providerJpaController.getProviderCount();
    }
    
    public void registerProvider(Provider provider) {
        providerJpaController.create(provider);
    }
    
    public void deleteProvider(int id) throws NonexistentEntityException {
        providerJpaController.destroy(id);
    }
    
    public void editProvider(Provider provider) throws Exception {
        providerJpaController.edit(provider);
    }
    
    public Provider getProvider(int id) {
        return providerJpaController.findProvider(id);
    }
    
}
