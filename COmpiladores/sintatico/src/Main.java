/**
 * Nome: João Vitor Levorato de Souza e Arthur Henrique de Oliveira Petroli
 * RA: 2419890 e 2408732
 */
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        // for (int i = 0; i < args.length; i++) {
            LeitorArquivo leitorDados = new LeitorArquivo("tests/sintatico/programa12.gyh");

            ArrayList<Token> tokens = new ArrayList<>();
            String line = "";
            int nLine = 1;

            while ((line = leitorDados.lerLinha()) != null) { // Percorre o arquivo lendo linha por linha
                try {
                    tokens.addAll(AnalisadorLexico.analisarLinha(line, nLine)); // Adiciona todos os tokens feitos no analisador
                } catch (Exception e) {
                    e.printStackTrace();
                }
                nLine++;
            }
            tokens.add(new Token("EOF", TipoToken.EOF, nLine++));
            for (Token token : tokens) {
                System.out.println(token + "  ");
            }
            try {
                AnalisadorSintatico analisador = new AnalisadorSintatico(tokens);
                analisador.Programa();
                System.out.println("Ta certin");
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        // }
    }
}
