/*
Autor:  Sefora Davanso de Assis
RA: 2367777
*/
package letraG;



public class ASubclasseDobro extends A {

    private int a1;
    private int a2;
    private int b1;
    private int b2;
    private int b3;

    public ASubclasseDobro( int a1, int a2, int b1, int b2, int  b3){
           this.a1 = a1;
           this.a2 = a2;
           this.b1 = b1;
           this.b2 = b2;
           this.b3 = b3;
    }
    
    @Override
    public int a1(  ) {
       return 2*a1 ;
    }

    @Override
    public int a2() {
       return 2*a2;    
    }

    @Override
    public int b1() {
       return 2*b1 ;    
    }

    @Override
    public int b2() {
         return 2*b2 ;    
    }

    @Override
    public int b3() {
        return 2*b3 ;    
    }
   
}
