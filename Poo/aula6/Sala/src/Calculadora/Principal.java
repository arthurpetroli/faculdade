package Calculadora;

public class Principal {

    public Principal(){
            //Lista Estática
            Calculadora [ ] vetor = new Calculadora[5];
            for(int i=0; i<5; i++ )
                   vetor[i] = new Calculadora();

            for(int i=0; i<5; i++)
                System.out.println( vetor[i] );

             //Lista Dinâmica
             ArrayList<Calculadora> lista = new ArrayList<>();
             lista.add( new Calculadora() );
             Calculadora samsung = new Calculadora();
             lista.add( samsung );

             for( Calculadora  i  :  lista )
                    System.out.println(  i  );

    }


    public static void main(String [ ] args ){ 

            new Principal();
    }
}