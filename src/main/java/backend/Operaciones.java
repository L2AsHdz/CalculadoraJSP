package backend;

/**
 *
 * @author asael
 */
public class Operaciones {
    
    public double sumar(double num1, double num2){
        return num1 + num2;
    }
    
    public double multiplicar(double num1, double num2){
        return num1 * num2;
    }
    
    public double mayor(double num1, double num2){
        if (num1 > num2) {
            return num1;
        } else {
            return num2;
        }
    }
    
    public double potencia(double num1, double num2){
        return (double) Math.pow(num1, num2);
    }
    
    public String binarios(int num1, int num2){
        return num1+" en binario: " + Integer.toBinaryString(num1) + 
                "<br/>"+num2+" en binario: " + Integer.toBinaryString(num2);
    }
}
