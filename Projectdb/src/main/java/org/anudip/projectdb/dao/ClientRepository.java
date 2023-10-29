package org.anudip.projectdb.dao;

import org.anudip.projectdb.bean.Client;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClientRepository extends JpaRepository<Client, Long> {

}
