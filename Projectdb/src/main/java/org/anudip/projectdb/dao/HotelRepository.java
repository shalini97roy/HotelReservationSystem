package org.anudip.projectdb.dao;
import java.util.List;
import java.util.Optional;

import org.anudip.projectdb.bean.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
public interface HotelRepository extends JpaRepository<Hotel, String> {

	@Query("select count(hotelId) from Hotel")
	public int getHotelCount();
	
	@Query("select hotelId from Hotel")
	public List<String> getAllHotelIds();
	
	@Query("select count(clientId) from Client")
	public long getClientCount();

	//public Optional<Hotel> findById(long clientId);
	
}

