// Generated from GyhRepaginadoLanguage.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link GyhRepaginadoLanguageParser}.
 */
public interface GyhRepaginadoLanguageListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link GyhRepaginadoLanguageParser#programa}.
	 * @param ctx the parse tree
	 */
	void enterPrograma(GyhRepaginadoLanguageParser.ProgramaContext ctx);
	/**
	 * Exit a parse tree produced by {@link GyhRepaginadoLanguageParser#programa}.
	 * @param ctx the parse tree
	 */
	void exitPrograma(GyhRepaginadoLanguageParser.ProgramaContext ctx);
	/**
	 * Enter a parse tree produced by {@link GyhRepaginadoLanguageParser#listaDeclaracoes}.
	 * @param ctx the parse tree
	 */
	void enterListaDeclaracoes(GyhRepaginadoLanguageParser.ListaDeclaracoesContext ctx);
	/**
	 * Exit a parse tree produced by {@link GyhRepaginadoLanguageParser#listaDeclaracoes}.
	 * @param ctx the parse tree
	 */
	void exitListaDeclaracoes(GyhRepaginadoLanguageParser.ListaDeclaracoesContext ctx);
	/**
	 * Enter a parse tree produced by {@link GyhRepaginadoLanguageParser#declaracao}.
	 * @param ctx the parse tree
	 */
	void enterDeclaracao(GyhRepaginadoLanguageParser.DeclaracaoContext ctx);
	/**
	 * Exit a parse tree produced by {@link GyhRepaginadoLanguageParser#declaracao}.
	 * @param ctx the parse tree
	 */
	void exitDeclaracao(GyhRepaginadoLanguageParser.DeclaracaoContext ctx);
	/**
	 * Enter a parse tree produced by {@link GyhRepaginadoLanguageParser#expressaoAritmetica}.
	 * @param ctx the parse tree
	 */
	void enterExpressaoAritmetica(GyhRepaginadoLanguageParser.ExpressaoAritmeticaContext ctx);
	/**
	 * Exit a parse tree produced by {@link GyhRepaginadoLanguageParser#expressaoAritmetica}.
	 * @param ctx the parse tree
	 */
	void exitExpressaoAritmetica(GyhRepaginadoLanguageParser.ExpressaoAritmeticaContext ctx);
	/**
	 * Enter a parse tree produced by {@link GyhRepaginadoLanguageParser#termoAritmetico}.
	 * @param ctx the parse tree
	 */
	void enterTermoAritmetico(GyhRepaginadoLanguageParser.TermoAritmeticoContext ctx);
	/**
	 * Exit a parse tree produced by {@link GyhRepaginadoLanguageParser#termoAritmetico}.
	 * @param ctx the parse tree
	 */
	void exitTermoAritmetico(GyhRepaginadoLanguageParser.TermoAritmeticoContext ctx);
	/**
	 * Enter a parse tree produced by {@link GyhRepaginadoLanguageParser#fatorAritmetico}.
	 * @param ctx the parse tree
	 */
	void enterFatorAritmetico(GyhRepaginadoLanguageParser.FatorAritmeticoContext ctx);
	/**
	 * Exit a parse tree produced by {@link GyhRepaginadoLanguageParser#fatorAritmetico}.
	 * @param ctx the parse tree
	 */
	void exitFatorAritmetico(GyhRepaginadoLanguageParser.FatorAritmeticoContext ctx);
	/**
	 * Enter a parse tree produced by {@link GyhRepaginadoLanguageParser#expressaoRelacional}.
	 * @param ctx the parse tree
	 */
	void enterExpressaoRelacional(GyhRepaginadoLanguageParser.ExpressaoRelacionalContext ctx);
	/**
	 * Exit a parse tree produced by {@link GyhRepaginadoLanguageParser#expressaoRelacional}.
	 * @param ctx the parse tree
	 */
	void exitExpressaoRelacional(GyhRepaginadoLanguageParser.ExpressaoRelacionalContext ctx);
	/**
	 * Enter a parse tree produced by {@link GyhRepaginadoLanguageParser#listaComandos}.
	 * @param ctx the parse tree
	 */
	void enterListaComandos(GyhRepaginadoLanguageParser.ListaComandosContext ctx);
	/**
	 * Exit a parse tree produced by {@link GyhRepaginadoLanguageParser#listaComandos}.
	 * @param ctx the parse tree
	 */
	void exitListaComandos(GyhRepaginadoLanguageParser.ListaComandosContext ctx);
	/**
	 * Enter a parse tree produced by {@link GyhRepaginadoLanguageParser#comando}.
	 * @param ctx the parse tree
	 */
	void enterComando(GyhRepaginadoLanguageParser.ComandoContext ctx);
	/**
	 * Exit a parse tree produced by {@link GyhRepaginadoLanguageParser#comando}.
	 * @param ctx the parse tree
	 */
	void exitComando(GyhRepaginadoLanguageParser.ComandoContext ctx);
	/**
	 * Enter a parse tree produced by {@link GyhRepaginadoLanguageParser#comandoAtribuicao}.
	 * @param ctx the parse tree
	 */
	void enterComandoAtribuicao(GyhRepaginadoLanguageParser.ComandoAtribuicaoContext ctx);
	/**
	 * Exit a parse tree produced by {@link GyhRepaginadoLanguageParser#comandoAtribuicao}.
	 * @param ctx the parse tree
	 */
	void exitComandoAtribuicao(GyhRepaginadoLanguageParser.ComandoAtribuicaoContext ctx);
}