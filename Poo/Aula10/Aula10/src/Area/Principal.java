package Area;

public class Principal {

    public abstract class Forma {
             private float area;

            public Forma(float area){
                    this.area = area;
            }

             public float getArea(){
                   return area;
             }
    }
    public abstract class Forma2D extends Forma {
           public Forma2D(float area){
                   super( area );
          }          

    }
    public class Circulo extends Forma2D {
           private float raio;    
           public Circulo(float raio){
                  super((float) (Math.PI*raio*raio));
                  this.raio = raio;
           }
           public String toString(){
                  return "Area do CIRCULO: " + getArea();
           }


    }
    public class Triangulo extends Forma2D {
    	private float base;
    	private float altura;
		public Triangulo(float base,float altura) {
			super((float) ((base*altura)/2));
			this.base = base;
			this.altura = altura;
		}
		public String toString(){
            return "Area do Triangulo: " + getArea();
		}

    }

     public Principal(){
             Circulo c1 = new Circulo(2.0f);
             System.out.println( c1 );
             
             Triangulo t1 = new Triangulo(4.0f,5.0f);
             System.out.println( t1 );
     }


     public static void main(String [ ] args){
             new Principal();
      }


}
