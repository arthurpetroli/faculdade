
public class Token {
	public String lexema;
	public TipoToken nome;
	public int linha;
	
	public Token(String lexema, TipoToken nome, int linha) {
		this.lexema = lexema;
		this.nome = nome;
		this.linha = linha;
	}

	@Override
	public String toString() {
		return "Token [lexema=" + lexema + ", nome=" + nome + ", linha=" + linha + "]";
	}
	
	public static Token reconhecedorLexema(String lexema) {
		switch(lexema) {
		case "[":   return(new Token(lexema, TipoToken.IniDelim, 0));
				
		case "]":   return(new Token(lexema, TipoToken.FimDelim, 0));
		
		case "(":   return(new Token(lexema, TipoToken.AbrePar, 0));
		
		case ")":   return(new Token(lexema, TipoToken.FechaPar, 0));
		
		case "<<":   return(new Token(lexema, TipoToken.Atrib, 0));
		
		case "and":   return(new Token(lexema, TipoToken.OpBoolE, 0));

		case "or":   return(new Token(lexema, TipoToken.OpBoolOu, 0));
		
		case "<":   return(new Token(lexema, TipoToken.OpRelMenor, 0));
		
		case "<=":   return(new Token(lexema, TipoToken.OpRelMenorIgual, 0));
		
		case ">":   return(new Token(lexema, TipoToken.OpRelMaiorIgual, 0));
		
		case ">=":   return(new Token(lexema, TipoToken.OpRelIgual, 0));
		
		case "==":   return(new Token(lexema, TipoToken.OpAritMult, 0));
		
		case "<>":   return(new Token(lexema, TipoToken.OpAritDiv, 0));
		
		case "or":   return(new Token(lexema, TipoToken.OpAritSoma, 0));
		
		case "or":   return(new Token(lexema, TipoToken.OpAritSub, 0));
		
		case "or":   return(new Token(lexema, TipoToken.PCDec, 0));
		
		case "or":   return(new Token(lexema, TipoToken.PCProg, 0));
		
		case "or":   return(new Token(lexema, TipoToken.PCInt, 0));
		
		case "or":   return(new Token(lexema, TipoToken.PCReal, 0));
		
		case "or":   return(new Token(lexema, TipoToken.PCLer, 0));
		
		case "or":   return(new Token(lexema, TipoToken.PCImprimir, 0));
		
		case "or":   return(new Token(lexema, TipoToken.PCSe, 0));
		
		case "or":   return(new Token(lexema, TipoToken.PCSenao, 0));
		
		case "or":   return(new Token(lexema, TipoToken.PCEntao, 0));
		
		case "or":   return(new Token(lexema, TipoToken.PCEnqto, 0));
		
		case "or":   return(new Token(lexema, TipoToken.PCIni, 0));
		
		case "or":   return(new Token(lexema, TipoToken.PCFim, 0));
							
		default:;			
		
		
	}
		return null;
	}
}
