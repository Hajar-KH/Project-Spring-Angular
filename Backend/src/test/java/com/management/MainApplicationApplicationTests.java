package com.management;

import com.management.entities.*;
import com.management.repositories.*;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

//test unitaire par junit
@SpringBootTest
class MainApplicationApplicationTests {
	@Autowired
	ClientRepository clientRepository;

	@Autowired
	VehiculeRepository vehiculeRepository;
	/*@Autowired
	ReservationRepository reservationRepository;*/

	//***********Test Personnel***********
	/*@Test
	public void TestCreateAdmin(){
		Admin personnel=new Admin("admin","onlyAdmin");
		adminRepository.save(personnel);
	}

	@Test
	public void TestFindPersonnelById(){
		Admin personnel=adminRepository.findById(1L).get();
		System.out.println(personnel);
	}
    @Test
	public void TestFindAllPersonnels(){
		List<Admin> personnels=adminRepository.findAll();
		personnels.forEach(System.out::println);
	}

	@Test
	public void TestDeletePersonnelById(){
		adminRepository.deleteById(1L);
	}
	@Test
	public void TestDeletePersonnelAll(){
		adminRepository.deleteAll();
	}
*/
	//***********Test Client***********
	@Test
	public void TestCreateClient(){
		Client client=new Client("123123","YAD","MAHA","M@GMAIL.COM","0701080909","emsi");
		clientRepository.save(client);

	}
	@Test
	public void TestUpdateClientById(){
		Client client=clientRepository.findById(1L).get();
		client.setPrenom("dodo");
		clientRepository.save(client);
	}
	@Test
	public void TestFindClientById(){
		Client client=clientRepository.findById(1L).get();
		System.out.println(client);
	}
	@Test
	public void TestFindAllClients(){
		List<Client> clients=clientRepository.findAll();
		clients.forEach(System.out::println);
	}

	@Test
	public void TestDeleteClientById(){
		clientRepository.deleteById(2L);
	}
	@Test
	public void TestDeleteClientAll(){
		clientRepository.deleteAll();
	}

	//***********Test Vehicule***********

	/*public void TestCreateVehicule(){
		Vehicule vehicule=new Vehicule("56655","range","double v",1200);
		vehiculeRepository.save(vehicule);

	}*/
	@Test
	public void TestUpdateVehiculeById(){
		Vehicule vehicule=vehiculeRepository.findById(1L).get();
		vehicule.setPrix(127899);
		vehiculeRepository.save(vehicule);
	}
	@Test
	public void TestFindVehiculeById(){
		Vehicule vehicule=vehiculeRepository.findById(1L).get();
		System.out.println(vehicule);
	}
	@Test
	public void TestFindAllVehicules(){
		List<Vehicule> vehicules=vehiculeRepository.findAll();
		vehicules.forEach(System.out::println);
	}

	@Test
	public void TestDeleteVehiculeById(){
		vehiculeRepository.deleteById(1L);
	}
	@Test
	public void TestDeleteVehiculeAll(){
		vehiculeRepository.deleteAll();
	}


	//***********Test Reservation***********
	/*@Test
	public void TestCreateReservation(){
		Reservation reservation=new Reservation(1L,1L,new Date(),new Date(),new Date());
		reservationRepository.save(reservation);

	}
	@Test
	public void TestUpdateReservationById(){
		Reservation reservation=reservationRepository.findById(1L).get();
		reservation.setIdClient(2L);
		reservationRepository.save(reservation);
	}
	@Test
	public void TestFindReservationById(){
		Reservation reservation=reservationRepository.findById(1L).get();
		System.out.println(reservation);
	}
	@Test
	public void TestFindAllReservations(){
		List<Reservation> reservations=reservationRepository.findAll();
		reservations.forEach(System.out::println);
	}

	@Test
	public void TestDeleteReservationById(){
		reservationRepository.deleteById(1L);
	}
	@Test
	public void TestDeleteReservationAll(){
		reservationRepository.deleteAll();
	}*/

}
