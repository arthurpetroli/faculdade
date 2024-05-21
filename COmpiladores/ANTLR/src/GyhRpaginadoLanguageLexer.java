// Generated from GyhRpaginadoLanguage.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class GyhRpaginadoLanguageLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		IniDelim=1, FimDelim=2, Atrib=3, OpRel=4, PCProg=5, PCDec=6, PCInt=7, 
		PCReal=8, PCLer=9, PCImprimir=10, PCSe=11, PCSenao=12, PCEntao=13, PCEnqto=14, 
		PCIni=15, PCFim=16, Var=17, Cadeia=18, NumInt=19, NumReal=20;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"IniDelim", "FimDelim", "Atrib", "OpRel", "PCProg", "PCDec", "PCInt", 
			"PCReal", "PCLer", "PCImprimir", "PCSe", "PCSenao", "PCEntao", "PCEnqto", 
			"PCIni", "PCFim", "Var", "Cadeia", "NumInt", "NumReal"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'['", "']'", "'<<'", null, "'prog'", "'dec'", "'integer'", "'float'", 
			"'read'", "'print'", "'if'", "'else'", "'then'", "'while'", "'start'", 
			"'end'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "IniDelim", "FimDelim", "Atrib", "OpRel", "PCProg", "PCDec", "PCInt", 
			"PCReal", "PCLer", "PCImprimir", "PCSe", "PCSenao", "PCEntao", "PCEnqto", 
			"PCIni", "PCFim", "Var", "Cadeia", "NumInt", "NumReal"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public GyhRpaginadoLanguageLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "GyhRpaginadoLanguage.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\26\u009d\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\3\2\3\2\3\3\3\3\3\4\3\4\3\4\3\5\3"+
		"\5\3\5\3\5\3\5\3\5\3\5\5\5:\n\5\3\6\3\6\3\6\3\6\3\6\3\7\3\7\3\7\3\7\3"+
		"\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\t\3\t\3\t\3\t\3\t\3\t\3\n\3\n\3\n\3\n"+
		"\3\n\3\13\3\13\3\13\3\13\3\13\3\13\3\f\3\f\3\f\3\r\3\r\3\r\3\r\3\r\3\16"+
		"\3\16\3\16\3\16\3\16\3\17\3\17\3\17\3\17\3\17\3\17\3\20\3\20\3\20\3\20"+
		"\3\20\3\20\3\21\3\21\3\21\3\21\3\22\3\22\7\22}\n\22\f\22\16\22\u0080\13"+
		"\22\3\23\3\23\3\23\3\23\3\23\7\23\u0087\n\23\f\23\16\23\u008a\13\23\3"+
		"\23\3\23\3\24\6\24\u008f\n\24\r\24\16\24\u0090\3\25\6\25\u0094\n\25\r"+
		"\25\16\25\u0095\3\25\3\25\6\25\u009a\n\25\r\25\16\25\u009b\2\2\26\3\3"+
		"\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25\f\27\r\31\16\33\17\35\20\37\21"+
		"!\22#\23%\24\'\25)\26\3\2\6\4\2>>@@\3\2C\\\5\2\62;C\\c|\3\2\62;\2\u00a6"+
		"\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2"+
		"\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2"+
		"\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2"+
		"\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\3+\3\2\2\2\5-\3\2\2\2\7/\3\2\2"+
		"\2\t9\3\2\2\2\13;\3\2\2\2\r@\3\2\2\2\17D\3\2\2\2\21L\3\2\2\2\23R\3\2\2"+
		"\2\25W\3\2\2\2\27]\3\2\2\2\31`\3\2\2\2\33e\3\2\2\2\35j\3\2\2\2\37p\3\2"+
		"\2\2!v\3\2\2\2#z\3\2\2\2%\u0081\3\2\2\2\'\u008e\3\2\2\2)\u0093\3\2\2\2"+
		"+,\7]\2\2,\4\3\2\2\2-.\7_\2\2.\6\3\2\2\2/\60\7>\2\2\60\61\7>\2\2\61\b"+
		"\3\2\2\2\62\63\7@\2\2\63:\7?\2\2\64\65\7>\2\2\65:\7?\2\2\66:\t\2\2\2\67"+
		"8\7>\2\28:\7@\2\29\62\3\2\2\29\64\3\2\2\29\66\3\2\2\29\67\3\2\2\2:\n\3"+
		"\2\2\2;<\7r\2\2<=\7t\2\2=>\7q\2\2>?\7i\2\2?\f\3\2\2\2@A\7f\2\2AB\7g\2"+
		"\2BC\7e\2\2C\16\3\2\2\2DE\7k\2\2EF\7p\2\2FG\7v\2\2GH\7g\2\2HI\7i\2\2I"+
		"J\7g\2\2JK\7t\2\2K\20\3\2\2\2LM\7h\2\2MN\7n\2\2NO\7q\2\2OP\7c\2\2PQ\7"+
		"v\2\2Q\22\3\2\2\2RS\7t\2\2ST\7g\2\2TU\7c\2\2UV\7f\2\2V\24\3\2\2\2WX\7"+
		"r\2\2XY\7t\2\2YZ\7k\2\2Z[\7p\2\2[\\\7v\2\2\\\26\3\2\2\2]^\7k\2\2^_\7h"+
		"\2\2_\30\3\2\2\2`a\7g\2\2ab\7n\2\2bc\7u\2\2cd\7g\2\2d\32\3\2\2\2ef\7v"+
		"\2\2fg\7j\2\2gh\7g\2\2hi\7p\2\2i\34\3\2\2\2jk\7y\2\2kl\7j\2\2lm\7k\2\2"+
		"mn\7n\2\2no\7g\2\2o\36\3\2\2\2pq\7u\2\2qr\7v\2\2rs\7c\2\2st\7t\2\2tu\7"+
		"v\2\2u \3\2\2\2vw\7g\2\2wx\7p\2\2xy\7f\2\2y\"\3\2\2\2z~\t\3\2\2{}\t\4"+
		"\2\2|{\3\2\2\2}\u0080\3\2\2\2~|\3\2\2\2~\177\3\2\2\2\177$\3\2\2\2\u0080"+
		"~\3\2\2\2\u0081\u0082\7$\2\2\u0082\u0088\t\3\2\2\u0083\u0087\t\4\2\2\u0084"+
		"\u0087\5\t\5\2\u0085\u0087\5\7\4\2\u0086\u0083\3\2\2\2\u0086\u0084\3\2"+
		"\2\2\u0086\u0085\3\2\2\2\u0087\u008a\3\2\2\2\u0088\u0086\3\2\2\2\u0088"+
		"\u0089\3\2\2\2\u0089\u008b\3\2\2\2\u008a\u0088\3\2\2\2\u008b\u008c\7$"+
		"\2\2\u008c&\3\2\2\2\u008d\u008f\t\5\2\2\u008e\u008d\3\2\2\2\u008f\u0090"+
		"\3\2\2\2\u0090\u008e\3\2\2\2\u0090\u0091\3\2\2\2\u0091(\3\2\2\2\u0092"+
		"\u0094\t\5\2\2\u0093\u0092\3\2\2\2\u0094\u0095\3\2\2\2\u0095\u0093\3\2"+
		"\2\2\u0095\u0096\3\2\2\2\u0096\u0097\3\2\2\2\u0097\u0099\7\60\2\2\u0098"+
		"\u009a\t\5\2\2\u0099\u0098\3\2\2\2\u009a\u009b\3\2\2\2\u009b\u0099\3\2"+
		"\2\2\u009b\u009c\3\2\2\2\u009c*\3\2\2\2\13\29|~\u0086\u0088\u0090\u0095"+
		"\u009b\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}