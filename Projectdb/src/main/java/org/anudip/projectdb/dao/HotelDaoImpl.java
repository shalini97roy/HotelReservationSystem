package org.anudip.projectdb.dao;

import java.util.List;

import org.anudip.projectdb.bean.Accommodation;
import org.anudip.projectdb.bean.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
@Service
@Repository
public class HotelDaoImpl implements HotelDao {
	@Autowired
	private HotelRepository repository;
	@Autowired
    private AccommodationRepository accommodationRepository;
	//private long clientServiceSerialNumber = 1; // Initialize the serial number
	@Override
	public void saveHotel(Hotel hotel) {
		repository.save(hotel);
	}
	@Override
	public List<Hotel> displayAllHotels() {
		return repository.findAll();
	}
	@Override
	public Hotel findAHotelById(String hotelId) {
		return repository.findById(hotelId).get();
	}
	@Override
	public List<Accommodation> displayAllAccommodations() {
		return accommodationRepository.findAll();
	}
	
	
	
	/*@Override
	public String generateNewHotelId() {
		 String newId="H";
		 int val=repository.getHotelCount();
		 //if (val>0)
			 newId=newId+(val+1);
		 return newId;
	}*/
	
	@Override
	public String generateNewHotelId() {
	    String newId = "H";
	    int val = repository.getHotelCount();
	    newId = newId + (val + 1);
	    return newId;
	}
	

	/*@Override
	public void deleteHotelById(Long hotelId) {
		repository.deleteById(hotelId);
	}*/
	@Override
	public List<String> getAllHotelIds() {
		return repository.getAllHotelIds();
	}
	@Override
	public long generateClientServiceSerialNumber() {
		int newNo =1;
		newNo = newNo + 1;
		return newNo;
	}
	@Override
	public Accommodation findAAccommodationById(String accommodationId) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<String> getAllAccommodationIds() {
		// TODO Auto-generated method stub
		return null;
	}	
	@Override
	public long generateNewClientId() {
		long newId=1001;
		long val=repository.getClientCount();
		if(val>0)
			newId=newId+val;
	
		return newId;
	}
	
	@Override
	public Hotel findAClientById(String clientId) {
		return repository.findById(clientId).get();
	}

}
