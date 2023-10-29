package org.anudip.projectdb.dao;

import org.anudip.projectdb.bean.Accommodation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccommodationRepository extends JpaRepository<Accommodation, String> {
	

}
