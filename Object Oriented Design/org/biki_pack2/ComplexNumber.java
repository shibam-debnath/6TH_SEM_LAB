package org.biki_pack2;

// Complete this like ImaginaryNumber
public class ComplexNumber extends AbstractVector2D {

    public ComplexNumber(float re, float im) {
        // Auto-generated constructor stub
        super(re, im); // initializes the superclass by calling its constructor
    }

    public String toString() {
        return x + " + sqrt(2)*(" + y + ")";
    }

    public void add(AbstractVector2D inum) {
        this.x += inum.x;
        this.y += inum.y;
    }

    // Complete the rest.
    public void sub(AbstractVector2D inum) {
        this.x -= inum.x;
        this.y -= inum.y;
    }

    public void mul(AbstractVector2D inum) {

        float a = this.x;
        float b = this.y;
        float c = inum.x;
        float d = inum.y;

        this.x = (a * c) + 2 * (b * d);
        this.y = (b * c) + (a * d);
    }

    public void div(AbstractVector2D inum) throws ArithmeticException {

        if (inum.x == 0 && inum.y == 0)
            throw new ArithmeticException("Division by zero.....");

        float a = this.x;
        float b = this.y;
        float c = inum.x;
        float d = inum.y;

        this.x = (a * c) - (2 * (b * (d)));
        this.y = (b * c) - (a * d);

        // denominator
        float divi = c * c - (2 * (d * d));

        this.x /= divi;
        this.y /= divi;
    }
}