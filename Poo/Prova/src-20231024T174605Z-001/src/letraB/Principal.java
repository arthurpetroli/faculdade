/*
Autor:  Sefora Davanso de Assis
RA: 2367777
*/
package letraB;

public class Principal {

     public Principal(){
        
        //exemplo de instanciação de 2 objetos de subclasse da classe A
        ASubclasse a = new ASubclasse(1,2,3,4,5);
        ASubclasse aa = new ASubclasse(5,4,3,2,1);

        //exibindo o retorno de todos os métodos abstratos
        System.out.println(a.a1());
        System.out.println(a.a2());
        System.out.println(a.b1());
        System.out.println(a.b2());
        System.out.println(a.b3());
        
        System.out.println(aa.a1());
        System.out.println(aa.a2());
        System.out.println(aa.b1());
        System.out.println(aa.b2());
        System.out.println(aa.b3());
    }
     
    public static void main(String args[]) {
       new Principal();
    }
}
