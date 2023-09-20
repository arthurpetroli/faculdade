package ClasseInterna;

public class CaixaEletronico {
    private Painel painel;
    private EmissorNotas emissorNotas;
    float valor;
    int operacao;

    public static class Painel {
        public void getOperacao(int operacao) {
            return;
        }
    }

    public static class EmissorNotas {
        public void getEmissorNotas(float valor) {
            return;
        }
    }
}