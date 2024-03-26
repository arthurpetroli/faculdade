import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.InputStream;
import java.util.Scanner;

public class LeitorArquivo {
	public InputStream  is;
	private Scanner scanner;

	public LeitorArquivo(String nome) throws FileNotFoundException {
		Scanner in = new Scanner(new FileReader(nome));
		while (in.hasNextLine() != false) {
			String line = scanner.nextLine();
			AnalizadorLexico passa = new AnalizadorLexico(line);
		    System.out.println(line);
		}
	}
}
