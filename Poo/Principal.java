package src;

import javax.swing.JOptionPane;

public class Principal {
	public Principal() {
			calculadora samsung = new calculadora();
			calculadora hp = new calculadora();
			calculadora china = new calculadora();
			JOptionPane entrada = new JOptionPane();
			
			String valor1 = entrada.showInputDialog(null,"Campo1:","Titulo");
			int campo1 = Integer.parseInt(valor1);
			samsung.setCampo1(campo1);
			
			String valor2 = entrada.showInputDialog(null,"Campo2:","Titulo");
			int campo2 = Integer.parseInt(valor2);
			samsung.setCampo2(campo2);
			
			entrada.showMessageDialog(null, "Soma:" + samsung.somar());
			
			
			samsung.setMarca("Samsung");
			samsung.setCor("Preto");
			samsung.setTamanho(4.12f);
			
			System.out.println(samsung);
			
		    
			valor1 = entrada.showInputDialog(null,"Campo1:","Titulo");
			campo1 = Integer.parseInt(valor1);
			hp.setCampo1(campo1);
			
			valor2 = entrada.showInputDialog(null,"Campo2:","Titulo");
			campo2 = Integer.parseInt(valor2);
			hp.setCampo2(campo2);
			
			entrada.showMessageDialog(null, "Soma:" + hp.somar());
			
			hp.setMarca("Hp");
			hp.setCor("Vermelho");
			hp.setTamanho(8.75f);
			
			
			System.out.println("\n" + hp);
			
			
			valor1 = entrada.showInputDialog(null,"Campo1:","Titulo");
			campo1 = Integer.parseInt(valor1);
			china.setCampo1(campo1);
			
			valor2 = entrada.showInputDialog(null,"Campo2:","Titulo");
			campo2 = Integer.parseInt(valor2);
			china.setCampo2(campo2);
			
			entrada.showMessageDialog(null, "Soma:" + china.somar());
			
			china.setMarca("china");
			china.setCor("Azul");
			china.setTamanho(12.47f);
			
			System.out.println("\n" + china);
			
			
	}
	
	public static void main(String [] args) {
		Principal principal = new Principal();
	}
}
