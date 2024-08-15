package core;

public class Formatador {

    public static int formatarValor(String valorDecimal) {
        double d = Double.parseDouble(valorDecimal);
        return (int) d;
    }

}
