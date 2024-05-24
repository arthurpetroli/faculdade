grammar GyhRepaginadoLanguage;

programa: IniDelim PCDec FimDelim listaDeclaracoes IniDelim PCProg FimDelim listaComandos;

listaDeclaracoes: declaracao (listaDeclaracoes)?;

declaracao: Var IniDelim (PCInt | PCReal) FimDelim;

expressaoAritmetica: termoAritmetico ('+' termoAritmetico)?;

termoAritmetico: fatorAritmetico ('*' fatorAritmetico)?;

fatorAritmetico: NumInt | NumReal | Var ;

listaComandos: comando (listaComandos)?;

comando: comandoAtribuicao;

comandoAtribuicao: Var Atrib expressaoAritmetica;

IniDelim: '[';
FimDelim: ']';
Atrib: '<<';
OpRel: '>=' | '<=' | '>' | '<' | '<>';
PCProg: 'prog';
PCDec: 'dec';
PCInt: 'integer';
PCReal: 'float';
PCLer: 'read';
PCImprimir: 'print';
PCSe: 'if';
PCSenao: 'else';
PCEntao: 'then';
PCEnqto: 'while';
PCIni: 'start';
PCFim: 'end';

Var: [A-Z] ([0-9] |[a-z] | [A-Z])*;
Cadeia: '"' ([0-9] |[a-z] | [A-Z] | OpRel | Atrib)* '"';
NumInt: [0-9]+;
NumReal: [0-9]+ '.' [0-9]+;

WS: (' ' | '\n' | '\t')->skip;

Comentario: '#' ('\n')*->skip;





