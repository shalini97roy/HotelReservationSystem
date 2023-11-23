package org.anudip.projectdb.dao;

import java.util.List;

import org.anudip.projectdb.bean.Client;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ClientRepository extends JpaRepository<Client, Long> {
	@Query("select clientId from Client")
	public List<Long> getAllClientIds();



}
