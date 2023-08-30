package src;
//AirFrier (subclasse),
//Microondas (superclasse)
public class AirFrier extends Microondas{
private Boolean sensorPorta;
	public AirFrier() {
		super("BRASTEMP");
		this.sensorPorta = true;
		System.out.println(getNome());
		System.out.println(tempoCozimento);
	}
	public static void main(String [] a) {
		new AirFrier();
	}
}

