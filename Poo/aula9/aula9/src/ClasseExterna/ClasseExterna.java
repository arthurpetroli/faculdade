package ClasseExterna;

public class ClasseExterna { // 1)
	private int var=222;
	class ClasseInterna {	
		public ClasseInterna() {
			var = 111;
		}
		public void executar() {			
			System.out.println(var);
		}
	}
	public static void main(String [] args) {
		ClasseExterna.ClasseInterna ci =
				new ClasseExterna().new ClasseInterna();
		ci.executar();
		
	}
	
}// fim classe Externa
