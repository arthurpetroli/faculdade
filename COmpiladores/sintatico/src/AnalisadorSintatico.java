import java.util.ArrayList;

public class AnalisadorSintatico {
    private Token look;
    private ArrayList<Token> tokens;
    
    private void match(String token) {
        if (this.look.getLexema().equals(token)) {
            this.tokens.remove(0);
            if (this.tokens.size() > 0) {
                this.look = this.tokens.get(0);
            }
        }
        else {
            throw new RuntimeException("Erro Sintatico: Linha " + this.look.getLinha() + ": (inesperado '" + this.look.getLexema() + "')");
        }
    }

    // Programa ->
    public void Programa() {
        if (look.getLexema().equals("[")) {
            match("[");
            match("dec");
            match("]");
            ListaDeclaracoes();
            match("[");
            match("prog");
            match("]");
            ListaComandos();
        }
        return;
    }


    // ListaDeclaracoes  ->
    public void ListaDeclaracoes() {
        if (look.getTipoToken().equals(TipoToken.Var)) {
            match(look.getLexema());
            match("[");
            TipoVar();
            match("]");
            ListaDeclaracoes();

        } else {
            Declaracao();
        }
    }

    // Declaracao ->
    private void Declaracao() {
        if (look.getTipoToken().equals(TipoToken.Var)) {
            match(look.getLexema());
            match("[");
            TipoVar();
            match("]");
        }
    }

    // TipoVar ->
    private void TipoVar() {
        if (look.getTipoToken().equals(TipoToken.PCInt)) {
            match("integer");
        }
        else if (look.getTipoToken().equals(TipoToken.PCReal)) {
            match("float");
        }
        else {
            return;
        }
    }

    // ExpressaoAritmeticaLinha ->
    private void ExpressaoAritimeticaLinha() {
        if (look.getLexema().equals("+")) {
            match("+");
            TermoAritmetico();
            ExpressaoAritimeticaLinha();
        } else if (look.getLexema().equals("-")) {
            match("-");
            TermoAritmetico();
            ExpressaoAritimeticaLinha();
        } else {
            return;
        }
    }

    // ExpressaoAritmetica ->
    private void ExpressaoAritmetica() {
        TermoAritmetico();
        ExpressaoAritimeticaLinha();
    }

    // TermoAritmeticoLinha ->
    private void TermoAritmeticoLinha() {
        if (look.getLexema().equals("*")) {
            match("*");
            FatorAritmetico();
            TermoAritmeticoLinha();
        } else if (look.getLexema().equals("/")) {
            match("/");
            FatorAritmetico();
            TermoAritmeticoLinha();
        } else {
            return;
        }
    }

    // TermoAritmetico ->
    private void TermoAritmetico() {
        FatorAritmetico();
        TermoAritmeticoLinha();
    }

    // FatorAritmetico ->
    private void FatorAritmetico() {
        if (look.getTipoToken().equals(TipoToken.NumInt)) {
            match(look.getLexema());
        } else if (look.getTipoToken().equals(TipoToken.NumReal)) {
            match(look.getLexema());
        } else if (look.getTipoToken().equals(TipoToken.Var)) {
            match(look.getLexema());
        } else if (look.getLexema().equals("(")) {
            match("(");
            ExpressaoAritmetica();
            match(")");
        } else {
            return;
        }
    }

    // ExpressaoRelacionalLinha ->
    private void ExpressaoRelacionalLinha() {
        if (look.getLexema().equals("and") || look.getLexema().equals("or")) {
            OperadorBooleano();
            TermoRelacional();
            ExpressaoRelacionalLinha();
        }
    }

    // ExpressaoRelacional ->
    private void ExpressaoRelacional() {
        TermoRelacional();
        ExpressaoRelacionalLinha();
    }

    // TermoRelacional ->
    private void TermoRelacional() {
        if (look.getLexema().equals("(")) {
            match("(");
            ExpressaoRelacional();
            match(")");
        } else {
            ExpressaoAritmetica();
            if (look.getTipoToken().equals(TipoToken.OpRelIgual) || look.getTipoToken().equals(TipoToken.OpRelDif) || look.getTipoToken().equals(TipoToken.OpRelMaior) || look.getTipoToken().equals(TipoToken.OpRelMaiorIgual) || look.getTipoToken().equals(TipoToken.OpRelMenor) || look.getTipoToken().equals(TipoToken.OpRelMenorIgual)) {
                match(look.getLexema());
                ExpressaoAritmetica();

            }
        }
    }

    // OperadorBooleano ->
    private void OperadorBooleano() {
        if (look.getLexema().equals("and")) {
            match("and");
        } else if (look.getLexema().equals("or")) {
            match("or");
        } else {
            return;
        }
    }

    // ListaComandos ->
    private void ListaComandos() {
        if (Comando() == 1) {
            ListaComandos();
        } else {
            return;
        }
    }

    // Comando ->
    private int Comando() {
        if (look.getTipoToken().equals(TipoToken.Var)) {
            ComandoAtribuicao();
        } else if (look.getLexema().equals("read")) {
            ComandoEntrada();
        } else if (look.getLexema().equals("print")) {
            ComandoSaida();
        } else if (look.getLexema().equals("if")) {
            ComandoCondicao();
        } else if (look.getLexema().equals("while")) {
            ComandoRepeticao();
        } else if (look.getLexema().equals("start")) {
            SubAlgoritmo();
        } else {
            return 0;
        }
        return 1;
    }


    // ComandoAtribuicao ->
    private void ComandoAtribuicao() {
        if (look.getTipoToken().equals(TipoToken.Var)) {
            match(look.getLexema());
            match("<<");
            if (look.getLexema().equals("(") || look.getTipoToken().equals(TipoToken.NumInt) || look.getTipoToken().equals(TipoToken.NumReal) || look.getTipoToken().equals(TipoToken.Var)){
                ExpressaoAritmetica();
            } else {
                throw new RuntimeException("Erro Sintatico: Linha " + this.look.getLinha() + ": (inesperado '" + this.look.getLexema() + "')");
            }
        } else {
            return;
        }
    }

    // ComandoEntrada ->
    private void ComandoEntrada() {
        if (look.getLexema().equals("read")) {
            match("read");
            if (look.getTipoToken().equals(TipoToken.Var)) {
                match(look.getLexema());
            }
        } else {
            return;
        }
    }

    // ComandoSaida ->
    private void ComandoSaida() {
        if (look.getLexema().equals("print")) {
            match("print");
            if (look.getTipoToken().equals(TipoToken.Var)) {
                match(look.getLexema());
            } else if (look.getTipoToken().equals(TipoToken.Cadeia)) {
                match(look.getLexema());
            } else {
                throw new RuntimeException("Erro Sintatico: Linha " + this.look.getLinha() + ": (inesperado '" + this.look.getLexema() + "')");

            }
        } else {
            return;
        }
    }

    // ComandoCondicao ->
    private void ComandoCondicao() {
        if (look.getLexema().equals("if")) {
            match("if");
            ExpressaoRelacional();
            match("then");
            Comando();
            if (look.getLexema().equals("else")) {
                match("else");
                Comando();
            }
        } else {
            return;
        }
    }

    // ComandoRepeticao ->
    private void ComandoRepeticao() {
        if (look.getLexema().equals("while")) {
            match("while");
            ExpressaoRelacional();
            match("then");
            Comando();
        } else {
            return;
        }
    }

    // SubAlgoritmo ->
    private void SubAlgoritmo() {
        if (look.getLexema().equals("start")) {
            match("start");
            ListaComandos();
            match("end");
        }
    }

    public AnalisadorSintatico(ArrayList<Token> tokensList) {
        this.tokens = tokensList;
        this.look = tokens.get(0);
    }

}
