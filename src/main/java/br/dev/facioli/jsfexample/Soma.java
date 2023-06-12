package br.dev.facioli.jsfexample;

import javax.faces.view.ViewScoped;
import javax.inject.Named;
import java.io.Serializable;

@Named("calculadora")
@ViewScoped
public class Soma implements Serializable {

    private double x, y, resultado;

    public double getX() {
        return x;
    }

    public void somar() {
        this.resultado = this.x + this.y;
    }

    public void setX(double x) {
        this.x = x;
    }

    public double getY() {
        return y;
    }

    public void setY(double y) {
        this.y = y;
    }

    public double getResultado() {
        return resultado;
    }
}
