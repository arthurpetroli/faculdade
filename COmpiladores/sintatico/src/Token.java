public class Token {
    private TipoToken tipoToken;
    private String lexema;
    private int linha;

    public Token(String lexema, TipoToken tipoToken, int linha) {
        this.lexema = lexema;
        this.tipoToken = tipoToken;
        this.linha = linha;
    }

    @Override
    public String toString() {
        return "<" + lexema + ", " + tipoToken + ", " + linha + ">";
    }

    public TipoToken getTipoToken() {
        return tipoToken;
    }

    public String getLexema() {
        return lexema;
    }

    public int getLinha() {
        return linha;
    }
}
