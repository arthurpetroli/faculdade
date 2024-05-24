import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.TokenSource;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;

public class Main {
	public static void main(String[] args) {
		try {
			CharStream fromFileName = CharStreams.fromFileName("programa1.gyh");
			CharStream cs = fromFileName;
			GyhRepaginadoLanguageLexer lexer = new GyhRepaginadoLanguageLexer(cs);
			CommonTokenStream token = new CommonTokenStream((TokenSource) lexer);
			GyhRepaginadoLanguageParser parser = new GyhRepaginadoLanguageParser((TokenStream) token);

			parser.programa();
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*	Token t;

			while ( (t=lexer.nextToken()).getType() != Token.EOF ) {
				System.out.println("<"+ lexer.VOCABULARY.getSymbolicName(t.getType()) + ", " + t.getText() + ">");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/*
		HashMap<Integer, String> carro = new HashMap<Integer, String>();

		 
		 carro.put(123, "Mustang");
		 carro.put(234, "Unin");
		 carro.put(345, "Corvet");
		 carro.put(456, "Marea");
		 carro.put(678, "Civicao");
		 
		 System.out.println("\nUsando map");
		 for (Map.Entry<Integer, String> entry : carro.entrySet()) {
			 Integer key = entry.getKey();
			 String val = entry.getValue();
			 System.out.println(key + " " + val);
			}
			
			System.out.println("\nUsando get");
			for (int chave: carro.keySet()) {
			System.out.println(carro.get(chave));
		}
		
		System.out.println("\nUsando string");
		for (String c: carro.values()) {
			System.out.println(c);
		}
		*/

	}
}
