package org.biki_pack2;

// You have done this earlier. Just copy-paste your previous code 
public class ImaginaryNumber extends AbstractVector2D {

	public ImaginaryNumber(float re, float im) {

		// Auto-generated constructor stub
		super(re, im); // initializes the superclass by calling its constructor
	}

	public String toString() {
		return x + " + i" + y;
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

		this.x = (a * c) - (b * d);
		this.y = (b * c) + (a * d);
	}

	public void div(AbstractVector2D inum) throws ArithmeticException {

		if (inum.x == 0 && inum.y == 0)
			throw new ArithmeticException("Division by zero.....");

		float a = this.x;
		float b = this.y;
		float c = inum.x;
		float d = inum.y;

		this.x = a * c + b * d;
		this.y = b * c - a * d;

		// denominator
		float divi = c * c + d * d;

		this.x /= divi;
		this.y /= divi;
	}

}
