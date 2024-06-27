package models;

public class Usuario {
	String username;
	String password;
	
	static public boolean loginExitoso(String username, String password) {
		String[] nombres = {"Juanito", "Melon", "Elvis"};
		String[] claves = {"perez", "melame", "cocho"};
		
		for(int i=0; i<nombres.length; i++) {
			if (nombres[i].equals(username) && claves[i].equals(password)){
				return true;
			}
			
		}
		
		return false;
	}

}
