package src;

public class Principal2 {

    public Principal2(){
    		Calculadora2 hp1  = new Calculadora2();  
            System.out.println( hp1 );

            Calculadora2 hp2  = new Calculadora2("AZUL");
            System.out.println(  hp2 );

            Calculadora2 hp3 = new Calculadora2("AZUL", 872.8f );
            System.out.println(  hp3 );
     }

    public static void main(String [] args ){
             new Principal2();
    }
}

