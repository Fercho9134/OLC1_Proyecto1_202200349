package main;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class pruebas {

    public static void main(String[] args) {
        // Configurar el look and feel de Java Swing
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Crear un nuevo JFrame para la ventana principal
        JFrame frame = new JFrame();
        frame.setSize(300, 200);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("Inicio de Sesión");
        
        // Centrar la ventana en la pantalla
        frame.setLocationRelativeTo(null);

        // Crear un panel para los componentes
        JPanel panel = new JPanel();
        panel.setLayout(new BorderLayout());

        // Crear un panel para el título
        JPanel tituloPanel = new JPanel(new FlowLayout(FlowLayout.CENTER));
        JLabel tituloLabel = new JLabel("Inicio de Sesión");
        tituloLabel.setFont(new Font("Arial", Font.BOLD, 18));
        tituloPanel.add(tituloLabel);

        // Crear un panel para los campos de texto y las etiquetas
        JPanel formularioPanel = new JPanel(new GridLayout(2, 2, 5, 5));
        formularioPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        // Crear etiquetas y campos de texto para usuario y contraseña
        JLabel usuarioLabel = new JLabel("Usuario:");
        JTextField usuarioField = new JTextField();
        usuarioField.setPreferredSize(new Dimension(200, 25)); // Establecer tamaño
        JLabel contraseñaLabel = new JLabel("Contraseña:");
        JPasswordField contraseñaField = new JPasswordField();
        contraseñaField.setPreferredSize(new Dimension(200, 25)); // Establecer tamaño

        // Añadir componentes al panel del formulario
        formularioPanel.add(usuarioLabel);
        formularioPanel.add(usuarioField);
        formularioPanel.add(contraseñaLabel);
        formularioPanel.add(contraseñaField);

        // Crear un panel para el botón de inicio de sesión
        JPanel botonPanel = new JPanel(new FlowLayout(FlowLayout.CENTER));

        // Botón de inicio de sesión
        JButton iniciarSesionButton = new JButton("Iniciar Sesión");
        iniciarSesionButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Aquí puedes agregar la lógica de inicio de sesión
                String usuario = usuarioField.getText();
                String contraseña = new String(contraseñaField.getPassword());
                System.out.println("Usuario: " + usuario);
                System.out.println("Contraseña: " + contraseña);
            }
        });
        
        // Botón de registro
        JButton registrarButton = new JButton("Registrar");
        registrarButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Aquí puedes agregar la lógica de registro
                JOptionPane.showMessageDialog(null, "Función de registro aún no implementada.", "Registro", JOptionPane.INFORMATION_MESSAGE);
            }
        });

        // Añadir el botón al panel del botón
        botonPanel.add(iniciarSesionButton);
        botonPanel.add(registrarButton);

        // Añadir los paneles al panel principal
        panel.add(tituloPanel, BorderLayout.NORTH);
        panel.add(formularioPanel, BorderLayout.CENTER);
        panel.add(botonPanel, BorderLayout.SOUTH);

        // Añadir el panel principal al frame y mostrar la ventana
        frame.add(panel);
        frame.setVisible(true);
    }
}
