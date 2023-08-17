package src;

import javax.swing.JOptionPane;

public class Principal {
    public Principal() {
        Calculadora samsung = new Calculadora();
        JOptionPane entrada = new JOptionPane();

        String valorUm = entrada.showInputDialog(null, "Campo 1:", "Titulo");
        String valorDois = entrada.showInputDialog(null, "Campo 2:", "Titulo");

        samsung.setCampoUm(Integer.parseInt(valorUm));
        samsung.setCampoDois(Integer.parseInt(valorDois));

        entrada.showMessageDialog(null, "Soma: "+samsung.somar());

        Calculadora hp = new Calculadora();

        valorUm = entrada.showInputDialog(null, "Campo 1:", "Titulo");
        valorDois = entrada.showInputDialog(null, "Campo 2:", "Titulo");

        hp.setCampoUm(Integer.parseInt(valorUm));
        hp.setCampoDois(Integer.parseInt(valorDois));
        entrada.showMessageDialog(null, "Soma: "+hp.somar());

	    /*
		samsung.setCampoUm(13);
	    samsung.setCampoDois(76);
	    samsung.setMarca("Samsung");
	    samsung.setCor("Azul");
	    samsung.setTamanho(13.0f);

	    System.out.println(samsung.somar());
	    System.out.println(samsung);


	    hp.setCampoUm(2);
	    hp.setCampoDois(53);
	    hp.setMarca("HP");
	    hp.setCor("Cinza");
	    hp.setTamanho(15.0f);

	    System.out.println(hp.somar());
	    System.out.println("Marca: "+ hp.getMarca()+"\nCor: "+hp.getCor()+"\nTamanho: "+hp.getTamanho());
	    */
    }
    public static void main(String [] args) {
        Principal principal = new Principal();
    }
}
