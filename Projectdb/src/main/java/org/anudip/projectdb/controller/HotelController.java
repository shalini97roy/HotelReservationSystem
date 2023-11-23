package org.anudip.projectdb.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.anudip.projectdb.bean.Accommodation;
import org.anudip.projectdb.bean.Client;
import org.anudip.projectdb.bean.ClientService;
import org.anudip.projectdb.bean.Hotel;
import org.anudip.projectdb.dao.AccommodationRepository;
import org.anudip.projectdb.dao.ClientRepository;
import org.anudip.projectdb.dao.ClientServiceRepository;
import org.anudip.projectdb.dao.HotelDao;
import org.anudip.projectdb.service.ClientServiceClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
@RestController
public class HotelController {
	@Autowired
	private HotelDao hotelDao;
	@Autowired
    private AccommodationRepository accommodationRepository;
	@Autowired
	private ClientRepository clientRepository;
	@Autowired
	private ClientServiceRepository clientServiceRepository;
	@Autowired
	private ClientServiceClass clientService;
	
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
				Client client = new Client(newId);
				List<String> hotelIdList=hotelDao.getAllHotelIds();
				List<String> accommodationIdList=hotelDao.getAllAccommodationIds();
				mv.addObject("hotelIdList",hotelIdList );
				mv.addObject("accommodationIdList",accommodationIdList);
				mv.addObject("clientRecord",client);
				return mv;
			}
			@PostMapping("/client")
			public ModelAndView saveClient(@ModelAttribute("clientRecord")Client client) {
				 clientRepository.save(client);
		        return new ModelAndView("redirect:/clientInd");
		    }	
			@GetMapping("/clients")
		    public ModelAndView showAllClientsPage() {
		        ModelAndView mv = new ModelAndView("clientDisplayPage");
		        List<Client> clientList = clientRepository.findAll(); // Assuming you have a findAll() method in your repository
		        mv.addObject("clientList", clientList);
		        return mv;
		    }
			@GetMapping("/client-find")
			public ModelAndView openClientFindPage() {
			ModelAndView mv = new ModelAndView("clientFindPage");
			List<Long>clientIdList=hotelDao.getAllClientIds();
			mv.addObject("clientIdList",clientIdList);
			return mv;
		}

			 @PostMapping("/client-find")
			  
			   public ModelAndView openClientShowUpdatePage(@RequestParam("client-id") Long clientId,@RequestParam(required=false,value="details") String str, @RequestParam(required=false,value="update") String stg) {
		        
			     String fname="";
			     if(stg==null)
			       fname="clientShowPage";
			       else if(str==null)
			         fname="clientUpdatePage";
			     ModelAndView mv= new ModelAndView(fname);
			     Client client=hotelDao.findAClientById(clientId);
			     mv.addObject("clientRecord",client);
			     return mv;
		        }//****ok
			 @GetMapping("/clientServiceInd")
				public ModelAndView showClientServicePage() {
					return new ModelAndView("clientServiceIndex");
				}
			 @GetMapping("/client-service-entry")
				public ModelAndView showClientServiceEntryPage() {
					ModelAndView mv=new ModelAndView("clientServiceEntryPage");
					long newId=hotelDao.generateNewClientServiceId();
					ClientService clientServ = new ClientService(newId);
					List<Long> clientIdList=hotelDao.getAllClientIds();
					mv.addObject("clientIdList",clientIdList );
					mv.addObject("clientServiceRecord",clientServ);
					return mv;
				}
			 @PostMapping("/client-service-entry")
				public ModelAndView saveClientService(@ModelAttribute("clientServiceRecord")ClientService clientServ) {
					 clientServiceRepository.save(clientServ);
			        return new ModelAndView("redirect:/clientServiceInd");
			    }	
			 @GetMapping("/display")
			    public ModelAndView showAllClientsServicePage() {
			        ModelAndView mv = new ModelAndView("clientServiceDisplayPage");
			        List<ClientService> clientServList = clientServiceRepository.findAll(); // Assuming you have a findAll() method in your repository
			        mv.addObject("clientServList", clientServList);
			        return mv;
			    }
			 @GetMapping("/show")
				public ModelAndView openClientServiceFindPage() {
				ModelAndView mv = new ModelAndView("clientServiceFind");
				List<Long> clientIdList1 =hotelDao.getAllClientIds();
				mv.addObject("clientIdList1",clientIdList1);
				return mv;
			}
			 
			 @PostMapping("/displayClientService")
			 public ModelAndView showAllClientsService(@RequestParam("client-id") Long clientId) {
			     ModelAndView mv = new ModelAndView("clientServiceShowPage");
			     List<ClientService> clientServiceList = clientService.getEntitiesByClientId(clientId);
			     mv.addObject("clientServiceList", clientServiceList);
			     return mv;
			 }
			 
			 
			 }


    


