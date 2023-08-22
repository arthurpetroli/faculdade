package src;
public class Principal {

    public Principal(){
         Calculadora samsung = new Calculadora();
         samsung.subtrair().somar().imprimir();
    }

    public static void main(String [ ] args ){
            new Principal();
    }
}

