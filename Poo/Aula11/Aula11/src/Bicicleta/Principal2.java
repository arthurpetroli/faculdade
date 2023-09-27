package Bicicleta;

import java.util.ArrayList;
import java.util.List;

public class Principal2 {
    //Polimorfismo com classes
    public abstract class Bicicleta {

           public abstract void cadastrar();
    }
    public class MontainBike extends Bicicleta {
           public  void cadastrar(){
                  System.out.println(this.getClass().getSimpleName());
           }
    }
    public class Speed extends Bicicleta {
           public void cadastrar(){
                  System.out.println(this.getClass().getSimpleName());
           }
    }
    public class Ergonomica extends Bicicleta {
           public  void cadastrar(){
                  System.out.println(this.getClass().getSimpleName());
           }
    }


    public Principal2(){
              List<Bicicleta>  lista = new ArrayList<>();
              Bicicleta bicicleta = new MontainBike();
              lista.add( bicicleta );

              bicicleta = new Speed(); 
              lista.add(bicicleta );

              bicicleta = new Ergonomica();
              lista.add( bicicleta );

              for( Bicicleta i : lista )
                     i.cadastrar();

    }


  public static void main(String [] args) {
             new Principal2();

  }
}
