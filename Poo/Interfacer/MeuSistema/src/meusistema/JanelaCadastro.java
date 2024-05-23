/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package meusistema;

import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JOptionPane;

/**
 *
 * @author a2408732
 */
public class JanelaCadastro extends javax.swing.JFrame {

    private static JanelaCadastro janelaCadastro;

    private BDCliente bdcliente;

    private JanelaCadastro() {
        bdcliente = new BDCliente();
        initComponents();
    }

    public static JanelaCadastro criarJanela() {
        if (janelaCadastro == null) {
            janelaCadastro = new JanelaCadastro();
        }

        janelaCadastro.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                janelaCadastro = null;
            }
        });

        return janelaCadastro;
    }

    public static JanelaCadastro getJanela() {
        return janelaCadastro;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        rotJanelaCadastro = new javax.swing.JLabel();
        rotNome = new javax.swing.JLabel();
        rotCPF = new javax.swing.JLabel();
        tfNome = new javax.swing.JTextField();
        tfCPF = new javax.swing.JTextField();
        btFechar = new javax.swing.JButton();
        btInserir = new javax.swing.JButton();
        btConsultar = new javax.swing.JButton();
        btAtualizar = new javax.swing.JButton();
        btRemover = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        rotJanelaCadastro.setText("Janela de Cadastro");

        rotNome.setText("Nome:");

        rotCPF.setText("CPF:");

        tfNome.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tfNomeActionPerformed(evt);
            }
        });

        tfCPF.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tfCPFActionPerformed(evt);
            }
        });

        btFechar.setText("Fechar");
        btFechar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btFecharActionPerformed(evt);
            }
        });

        btInserir.setText("Inserir");
        btInserir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btInserirActionPerformed(evt);
            }
        });

        btConsultar.setText("Consultar");
        btConsultar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btConsultarActionPerformed(evt);
            }
        });

        btAtualizar.setText("Atualizar");
        btAtualizar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btAtualizarActionPerformed(evt);
            }
        });

        btRemover.setText("Remover");
        btRemover.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btRemoverActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(127, 127, 127)
                        .addComponent(rotJanelaCadastro))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(24, 24, 24)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(rotNome)
                            .addComponent(rotCPF))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(tfNome, javax.swing.GroupLayout.DEFAULT_SIZE, 86, Short.MAX_VALUE)
                            .addComponent(tfCPF)))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(btInserir)
                        .addGap(18, 18, 18)
                        .addComponent(btConsultar)
                        .addGap(18, 18, 18)
                        .addComponent(btAtualizar)
                        .addGap(18, 18, 18)
                        .addComponent(btRemover)))
                .addContainerGap(15, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(btFechar)
                .addGap(21, 21, 21))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(22, 22, 22)
                .addComponent(rotJanelaCadastro)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(rotNome)
                    .addComponent(tfNome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(rotCPF)
                    .addComponent(tfCPF, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 96, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btInserir)
                    .addComponent(btConsultar)
                    .addComponent(btAtualizar)
                    .addComponent(btRemover))
                .addGap(30, 30, 30)
                .addComponent(btFechar)
                .addGap(14, 14, 14))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btFecharActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btFecharActionPerformed
        sair();
    }//GEN-LAST:event_btFecharActionPerformed

    private void tfCPFActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tfCPFActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tfCPFActionPerformed

    private void tfNomeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tfNomeActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tfNomeActionPerformed

    private void btConsultarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btConsultarActionPerformed
        consultar();
    }//GEN-LAST:event_btConsultarActionPerformed

    private void btAtualizarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btAtualizarActionPerformed
        atualizar();
    }//GEN-LAST:event_btAtualizarActionPerformed

    private void btInserirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btInserirActionPerformed
        inserir();
    }//GEN-LAST:event_btInserirActionPerformed

    private void btRemoverActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btRemoverActionPerformed
        remover();
    }//GEN-LAST:event_btRemoverActionPerformed

    public void sair() {
        dispose();
    }

    public void consultar() {
        Cliente cliente = new Cliente();
        cliente = bdcliente.consultar(tfCPF.getText());
        if (cliente != null) {
            tfNome.setText(cliente.getNome());
            tfCPF.setText(cliente.getCPF());
        } else {
            JOptionPane.showMessageDialog(null, "Não encontrado", "JanelaCadastro", JOptionPane.ERROR_MESSAGE);
            limpar();
        }
    }

    public void remover() {

        if (bdcliente.remover(tfCPF.getText())) {
            JOptionPane.showMessageDialog(null, "OK", "Janela Cadastro",
                    JOptionPane.INFORMATION_MESSAGE);
        } else {
            JOptionPane.showMessageDialog(null, "Não encontrado", "JanelaCadastro", JOptionPane.ERROR_MESSAGE);
            limpar();
        }

    
    

    public void limpar() {
        tfNome.setText("");
        tfCPF.setText("");
    }

    public void inserir() {
        Cliente cliente = new Cliente();
        cliente.setNome(tfNome.getText());
        cliente.setCPF(tfCPF.getText());

        bdcliente.inserir(cliente);
        if (bdcliente.consultar(tfCPF.getText()) != null) {
            JOptionPane.showMessageDialog(null, "OK", "JanelaCadastro", JOptionPane.INFORMATION_MESSAGE
            );
        }



    public void atualizar() {
        Cliente cliente = new Cliente();
        cliente.setNome(tfNome.getText());
        cliente.setCPF(tfCPF.getText());

        if (bdcliente.atualizar(cliente) != null) {
            JOptionPane.showMessageDialog(null, "OK", "Janela Cadastro",
                    JOptionPane.INFORMATION_MESSAGE);
        } else {
            JOptionPane.showMessageDialog(null, "CPF não encontrado",
                    "Janela Cadastro", JOptionPane.ERROR_MESSAGE);
        }
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(JanelaCadastro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(JanelaCadastro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(JanelaCadastro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(JanelaCadastro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new JanelaCadastro().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btAtualizar;
    private javax.swing.JButton btConsultar;
    private javax.swing.JButton btFechar;
    private javax.swing.JButton btInserir;
    private javax.swing.JButton btRemover;
    private javax.swing.JLabel rotCPF;
    private javax.swing.JLabel rotJanelaCadastro;
    private javax.swing.JLabel rotNome;
    private javax.swing.JTextField tfCPF;
    private javax.swing.JTextField tfNome;
    // End of variables declaration//GEN-END:variables
}