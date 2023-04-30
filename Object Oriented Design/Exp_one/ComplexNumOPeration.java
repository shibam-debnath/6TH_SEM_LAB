package Exp_one;
import Exp_one.biki_pack.*;

public class ComplexNumOPeration {

    public static void main(String[] args) {

        ImgNum num1 = new ImgNum(2, 3);
        ImgNum num2 = new ImgNum(0, 0);

        // print both numbers
        System.out.print("First number is : ");
        num1.printComplexNumber();
        System.out.print("Second number is : ");
        num2.printComplexNumber();

        // add
        System.out.print("Addition of two numbers is : ");
        num1.add(num2);

        // subtract
        System.out.print("Subtraction of two numbers is : ");
        num1.sub(num2);

        // multiply
        System.out.print("Multiplication of two numbers is : ");
        num1.multiply(num2);

        // division
        System.out.print("Division of two numbers is : ");
        try {
            num1.divide(num2);
        } catch (ArithmeticException err) {
            System.out.println(err);
        }
    }
}
