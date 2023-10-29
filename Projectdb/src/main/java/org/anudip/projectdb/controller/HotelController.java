package org.anudip.projectdb.controller;
import java.util.List;
import org.anudip.projectdb.bean.Accommodation;
import org.anudip.projectdb.bean.Client;
import org.anudip.projectdb.bean.Hotel;
import org.anudip.projectdb.dao.AccommodationRepository;
import org.anudip.projectdb.dao.HotelDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
@RestController
public class HotelController {
	@Autowired
	private HotelDao hotelDao;
	@Autowired
    private AccommodationRepository accommodationRepository;
	
	
	@GetMapping("/index")
	public ModelAndView showIndexPage() {
		return new ModelAndView("index");
	}
	@GetMapping("/admin")
	public ModelAndView showAdminPage() {
		return new ModelAndView("adminPage");
	} 
	@GetMapping("/hotelInd")
	public ModelAndView showhotelIndPage() {
		return new ModelAndView("hotelIndex");
	}
	
	@GetMapping("/hotel")
	public ModelAndView showHotelEntryPage() {
		ModelAndView mv=new ModelAndView("hotelEntryPage");
		String newId=hotelDao.generateNewHotelId();
		Hotel hotel = new Hotel(newId);
		mv.addObject("hotelRecord",hotel);
		return mv;
	}
	@PostMapping("/hotel")
	   public ModelAndView saveUpdateHotel(@ModelAttribute("hotelRecord") Hotel hotel) {
		   hotelDao.saveHotel(hotel);
		   return new ModelAndView("redirect:/hotelInd");
	}
	@GetMapping("/hotels")
	   public ModelAndView showAllHotelsPage() {
		   ModelAndView mv = new ModelAndView("hotelDisplayPage");
		   List<Hotel> hotelList=hotelDao.displayAllHotels();
		   mv.addObject("hotelReport",hotelList);
		   return mv;
	   }
	@GetMapping("/accommodationInd")
	public ModelAndView showAccommodationPage() {
		return new ModelAndView("accommodationIndex");
	}
	@GetMapping("/accommodation")
	public ModelAndView accommodationEntryPage() {
		ModelAndView mv=new ModelAndView("accommodationEntryPage");
		Accommodation accommodation = new Accommodation();
		mv.addObject("accommodationRecord",accommodation);
		return mv;
	}
	@PostMapping("/accommodation")
    public ModelAndView saveAccommodation(@ModelAttribute("accommodationRecord") Accommodation accommodation) {
        // Save the accommodation record to the database using the repository
        accommodationRepository.save(accommodation);

        // Redirect to a success page or do whatever is necessary
        return new ModelAndView("redirect:/accommodationInd");
    }
	@GetMapping("/accommodations")
	 public ModelAndView showAllAccommodationsPage() {
	     ModelAndView mv = new ModelAndView("accommodationDisplayPage");
	     List<Accommodation> accommodationList = hotelDao.displayAllAccommodations();
	     mv.addObject("accommodationReport", accommodationList);
	     return mv;
	 }
	@GetMapping("/clientInd")
	public ModelAndView showClientPage() {
		return new ModelAndView("clientIndex");
	}
	@GetMapping("/client")
	public ModelAndView showClientEntryPage() {
		ModelAndView mv=new ModelAndView("clientEntryPage");
		long newId=hotelDao.generateNewClientId();
		Client client = new Client();
		mv.addObject("clientRecord",client);
		return mv;
	}//oke all code
	
	


    

}
