package org.anudip.projectdb.service;

import java.util.List;

import org.anudip.projectdb.bean.ClientService;
import org.anudip.projectdb.dao.ClientServiceRepository;
import org.springframework.stereotype.Service;

@Service
public class ClientServiceClass {
	private final ClientServiceRepository clientServiceRepository;

	   
    public ClientServiceClass( ClientServiceRepository clientServiceRepository) {
        this.clientServiceRepository = clientServiceRepository;
    }

    public List<ClientService> getEntitiesByClientId(Long clientId) {
    	    List<ClientService> result = clientServiceRepository.findAllByClientId(clientId);
    	    return result;
    }
    
    

	
	

}
