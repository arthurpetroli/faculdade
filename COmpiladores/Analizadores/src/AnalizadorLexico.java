import java.io.FileNotFoundException;
import java.util.StringTokenizer;

public class AnalizadorLexico {
	public AnalizadorLexico(String line) throws FileNotFoundException {
		StringTokenizer tokenizer = new StringTokenizer(line, " ");
		while (tokenizer.hasMoreTokens()) {
		    String lexema = tokenizer.nextToken();
		    Token tokens = Token.reconhecedorLexema(lexema);
		    System.out.println(lexema);
		}
	}

}
	