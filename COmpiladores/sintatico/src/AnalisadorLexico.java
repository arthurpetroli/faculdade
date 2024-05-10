import java.util.ArrayList;

public class AnalisadorLexico {

	private static ArrayList<Token> tokens = new ArrayList<>();

	/**
	 * Metodo para verificar se a string dada é um numero integer
	 * @param string
	 * @return retorna true se conseguir passar para inteiro e falso se der erro (nao é inteiro)
	 */
	public static boolean isInteger(String string) {
		try {
			Integer.parseInt(string);
			return true;
		} catch (NumberFormatException e) {
			return false;
		}
	}

	/**
	 * Metodo para verificar se a string dada é um numero float
	 * @param string
	 * @return retorna true se conseguir passar para float e falso se der erro (nao é float)
	 */
	public static boolean isFloat(String string) {
		try {
			Float.parseFloat(string);
			return true;
		} catch (NumberFormatException e) {
			return false;
		}
	}

    public static ArrayList<Token> analisarLinha(String line, int nLine) throws Exception {
		tokens = new ArrayList<Token>();
		if (!(line.equals("")) && !(line.startsWith("#"))) { // Se a linha não for vazia e não começar com # (comentario)
			/**
			 * Esta expressão regular da split na string mantendo os separadores
			 * Exemplo: "a = 10" -> ["a", " ", "=", " ", "10"]
			 */
			String[] splitLine = line.split("((?=\\[|]| |\\(|\\)|<|>|=|\\*|\\/|\\+|\\-|\t|\")|(?<=\\[|]| |\\(|\\)|<|>|=|\\*|\\/|\\+|\\-|\t|\"))"); //

			for (int i = 0; i < splitLine.length; i++) { // For percorrendo os itens do vetor splitLine
				if (splitLine[i].equals(" ") || splitLine[i].equals("") || splitLine[i].equals("\t")) { // ignora se for espaço ou vazio
					continue;
				} else if (Character.isUpperCase(splitLine[i].charAt(0)) == true) { // Letra maiuscula -> Var
					tokens.add(new Token(splitLine[i], TipoToken.Var, nLine));
				} else if (isInteger(splitLine[i]) == true) { // Integer
					tokens.add(new Token(splitLine[i], TipoToken.NumInt, nLine));
				} else if (isFloat(splitLine[i]) == true) { // Float
					tokens.add(new Token(splitLine[i], TipoToken.NumReal, nLine));
				} else {
					switch (splitLine[i]) { // Switch para verificar o tipo do token
						// Case strings
						case "\"":
							String aux = "\"";
							i++;
							try { // Try Catch caso a string não possua uma aspas fechando
								while (!(splitLine[i].equals("\""))) { // Percorre o vetor splitLine até achar outra aspas indicando que é o fim da string
									aux += splitLine[i]; //Concatena a string
									i++;
								}
							} catch (Exception e) {
								throw new Exception("Erro Léxico: <" + line + ", linha: " + nLine + "> Sequências de caracteres não envolvida por aspas");
							}
							tokens.add(new Token(aux+splitLine[i], TipoToken.Cadeia, nLine));
							break;

						// Cases Operadores Relacionais
						case "[":
							tokens.add(new Token("[", TipoToken.IniDelim, nLine));
							break;
						case "]":
							tokens.add(new Token("]", TipoToken.FimDelim, nLine));
							break;
						case "(":
							tokens.add(new Token(splitLine[i], TipoToken.AbrePar, nLine));
							break;
						case ")":
							tokens.add(new Token(splitLine[i], TipoToken.FechaPar, nLine));
							break;
						case "<":
							switch (splitLine[i+1]) { // Case para ver proximo caracter e ver o tipo do operador
								case "<":
									tokens.add(new Token(splitLine[i]+splitLine[i+1], TipoToken.Atrib, nLine));
									i++;
									break;
								case ">":
									tokens.add(new Token(splitLine[i]+splitLine[i+1], TipoToken.OpRelDif, nLine));
									i++;
									break;
								case "=":
									tokens.add(new Token(splitLine[i]+splitLine[i+1], TipoToken.OpRelMenorIgual, nLine));
									i++;
									break;
								default:
									tokens.add(new Token(splitLine[i], TipoToken.OpRelMenor, nLine));
									break;
							}
							break;
						case ">":
							if(splitLine[i+1].equals("=")) { // If para ver proximo caracter e ver o tipo do operador
								tokens.add(new Token(splitLine[i]+splitLine[i+1], TipoToken.OpRelMaiorIgual, nLine));
								i++;
							} else {
								tokens.add(new Token(splitLine[i], TipoToken.OpRelMenor, nLine));
							}
							break;
						case "=":
							if(splitLine[i+1].equals("=")) { // If para ver proximo caracter e ver o tipo do operador
								tokens.add(new Token(splitLine[i]+splitLine[i+1], TipoToken.OpRelMaiorIgual, nLine));
								i++;
							} else {
								throw new Exception("Erro Léxico: <" + splitLine[i] + ", linha: " + nLine + "> caracter desconhecido");
							}
							break;

						// Cases Operadores Aritimeticos
						case "*":
							tokens.add(new Token(splitLine[i], TipoToken.OpAritMult, nLine));
							break;
						case "/":
							tokens.add(new Token(splitLine[i], TipoToken.OpAritDiv, nLine));
							break;
						case "+":
							tokens.add(new Token(splitLine[i], TipoToken.OpAritSoma, nLine));
							break;
						case "-":
							tokens.add(new Token(splitLine[i], TipoToken.OpAritSub, nLine));
							break;

						// Cases Operadores booleanos
						case "or":
							tokens.add(new Token(splitLine[i], TipoToken.OpBoolOu, nLine));
							break;
						case "and":
							tokens.add(new Token(splitLine[i], TipoToken.OpBoolE, nLine));
							break;

						// Cases para Palavras-chaves
						case "dec":
							tokens.add(new Token(splitLine[i], TipoToken.PCDec, nLine));
							break;
						case "prog":
							tokens.add(new Token(splitLine[i], TipoToken.PCProg, nLine));
							break;
						case "integer":
							tokens.add(new Token(splitLine[i], TipoToken.PCInt, nLine));
							break;
						case "float":
							tokens.add(new Token(splitLine[i], TipoToken.PCReal, nLine));
							break;
						case "read":
							tokens.add(new Token(splitLine[i], TipoToken.PCLer, nLine));
							break;
						case "print":
							tokens.add(new Token(splitLine[i], TipoToken.PCImprimir, nLine));
							break;
						case "if":
							tokens.add(new Token(splitLine[i], TipoToken.PCSe, nLine));
							break;
						case "else":
							tokens.add(new Token(splitLine[i], TipoToken.PCSenao, nLine));
							break;
						case "then":
							tokens.add(new Token(splitLine[i], TipoToken.PCEntao, nLine));
							break;
						case "while":
							tokens.add(new Token(splitLine[i], TipoToken.PCEnqto, nLine));
							break;
						case "start":
							tokens.add(new Token(splitLine[i], TipoToken.PCIni, nLine));
							break;
						case "end":
							tokens.add(new Token(splitLine[i], TipoToken.PCFim, nLine));
							break;
						default: // Se não entrar em nenhum if e em nenhum case não é nenhum token então é erro lexico
							throw new Exception("Erro Léxico: <" + splitLine[i] + ", linha: " + nLine + "> caracter desconhecido");
					}
				}
			}
		}
		return tokens;
	}
}