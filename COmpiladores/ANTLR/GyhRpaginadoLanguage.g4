grammar GyhRpaginadoLanguage;

programa: IniDelim PCDec FimDelim;

IniDelim: '[';
FimDelim: ']';
Atrib: '<<';
OpRel: '>=' | '<=' | '<' | '>' | '<>';
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

Var: [A-Z] ( [0-9] | [a-z] | [A-Z] )*;
Cadeia: '"' [A-Z] ( [0-9] | [a-z] | [A-Z] | OpRel | Atrib )* '"';
NumInt: [0-9]+;
NumReal: [0-9]+ '.' [0-9]+;