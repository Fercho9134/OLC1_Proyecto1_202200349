package main;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.data.category.DefaultCategoryDataset;

import javax.swing.*;

public class pruebas extends JFrame {

    public pruebas(String title) {
        super(title);

        // Creamos un conjunto de datos de ejemplo
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        dataset.addValue(1.0, "Category 1", "Column 1");
        dataset.addValue(2.0, "Category 1", "Column 2");
        dataset.addValue(3.0, "Category 1", "Column 3");


        // Creamos el gráfico de barras utilizando ChartFactory
        JFreeChart barChart = ChartFactory.createBarChart(
                "Bar Chart Example",    // Título del gráfico
                "Category",             // Etiqueta del eje X
                "Value",                // Etiqueta del eje Y
                dataset                 // Conjunto de datos
        );

        // Creamos un panel para mostrar el gráfico
        ChartPanel chartPanel = new ChartPanel(barChart);
        setContentPane(chartPanel);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            pruebas example = new pruebas("Bar Chart Example");
            example.setSize(800, 600);
            example.setLocationRelativeTo(null);
            example.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            example.setVisible(true);
        });
    }
}
