package aula1;

import java.awt.GridLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JFrame;
import javax.swing.JLabel;

//JFrame é um Container
public class Principal extends JFrame{
	private int WIDTH=300;
	private int HEIGHT=240;
	
	private JLabel labelNome;
	private JLabel labelSobrenome;
	private JLabel labelEndereco;
	private JLabel labelCEP;
	
	public void gui() {
		
		setTitle("TITULO DA JANELA");
		
		//FlowLayout layout = new FlowLayout();
		//BorderLayout layout = new BorderLayout();
		GridLayout layout = new GridLayout(2,2);
		setLayout(layout);
				
		labelNome = new JLabel("NOME: ");
		labelNome.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				System.out.println("PASSEI POR AQUI");
			}
		});
		labelSobrenome = new JLabel("SOBRENOME");
		labelEndereco = new JLabel("ENDEREÇO: ");
		labelCEP = new JLabel("CEP: ");
		
		add(labelNome);
		add(labelSobrenome);
		add(labelEndereco);
		add(labelCEP);
	}	
	
	public Principal() {
		
		setSize(WIDTH, HEIGHT);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		setVisible(true);
		
		gui();
	}
		
	public static void main(String [] a) {
		new Principal();
	}
	
}
