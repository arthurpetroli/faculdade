package ex3;
import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import java.awt.event.ActionListener;
public class Principal extends JFrame{
	private int WIDTH=300;
	private int HEIGHT=240;
	
	private JLabel labelNome;
	private JLabel labelSobrenome;
	private JLabel labelEndereco;
	private JLabel labelCEP;
	
	private JTextField tfNome;
	private JButton bNome;		
	
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
		
		tfNome = new JTextField(20);
		tfNome.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {				
				System.out.println(e.getActionCommand());
			}
		});
		bNome = new JButton("CLIQUE AQUI");
		bNome.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(
						null,tfNome.getText(),"titulo",JOptionPane.INFORMATION_MESSAGE);
				
			}
		});
		
		labelSobrenome = new JLabel("SOBRENOME");
		labelEndereco = new JLabel("ENDEREÇO: ");
		labelCEP = new JLabel("CEP: ");
		
		add(labelNome);
		add(tfNome);
		add(bNome);
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
