package Exp_one.biki_pack;

public class ImgNum {
    private double real;
    private double imaginary;

    public ImgNum() {
        real = 0;
        imaginary = 0;
    }

    public ImgNum(double treal, double timagionary) {
        this.real = treal;
        this.imaginary = timagionary;
    }

    public void printComplexNumber() {
        System.out.print(" " + this.real + " + i" + this.imaginary + "\n");
    }

    public void add(ImgNum num1) {
        this.real += num1.real;
        this.imaginary += num1.imaginary;

        this.printComplexNumber();
    }

    public void sub(ImgNum num1) {

        this.real -= num1.real;
        this.imaginary -= num1.imaginary;

        this.printComplexNumber();

    }

    public void multiply(ImgNum num1) {

        double a = this.real;
        double b = this.imaginary;
        double c = num1.real;
        double d = num1.imaginary;

        this.real = (a * c) - (b * d);
        this.imaginary = (b * c) + (a * d);

        this.printComplexNumber();
    }

    public void divide(ImgNum num) throws ArithmeticException {

        if (num.real == 0 && num.imaginary == 0)
            throw new ArithmeticException("Division by zero.....");

        double a = this.real;
        double b = this.imaginary;
        double c = num.real;
        double d = num.imaginary;

        this.real = a * c + b * d;
        this.imaginary = b * c - a * d;

        // denominator
        double divi = c * c + d * d;

        this.real /= divi;
        this.imaginary /= divi;

        this.printComplexNumber();

    }

    public float getAbsoluteVlaue(ImgNum num) {
        return 5;
    }

    public ImgNum getConjugate(ImgNum num) {
        return num;
    }

    public void test() {
        System.out.println("Testing Imaginary Number :");
    }
}
