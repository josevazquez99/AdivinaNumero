package model;

public class Numero {
	
	private static int numeroRandom=(int)Math.floor(Math.random()*10+1);
	private int numeroActual;
	private static int intentos;
	
	public Numero() {
		this.numeroActual = 0;
		intentos++;
	}
	
	public void introducirCalculos(int numero,StringBuilder mostrar) {
		if(numero!=0) {
			numeroActual=numero;
		}
		if(numero<numeroRandom) {
			mostrar.setLength(0);
			mostrar.append("El numero es mas grande");
		}
		else if(numero>numeroRandom) {
			mostrar.setLength(0);
			mostrar.append("El numero es mas pequeño");
		}
		else {
			mostrar.setLength(0);
			mostrar.append("Has acertado el numero en "+intentos+" intentos ");
		}
	}
	
	
	

	

	
	
	

}
