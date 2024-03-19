package javaapplication1;


import static javax.swing.WindowConstants.EXIT_ON_CLOSE;

/**
 *
 * @author luciorocha
 */
public class AppGUI {

    public AppGUI(){
        
        AgendaFrame agenda = new AgendaFrame();
        agenda.setDefaultCloseOperation(EXIT_ON_CLOSE);
        agenda.setSize(240,480);
        agenda.setVisible(true);
        
        
    }
    public static void main(String[] args) {
        new AppGUI();
    }
    
}
