package org.biki_pack2;

public class Tester {

	// ImaginaryNumber test. Complete it
	public void imaginaryTest() {

		System.out.println("Imaginary test goes here : ");

		// Addition test
		System.out.println("\nAddition test");
		ImaginaryNumber i1 = new ImaginaryNumber(1, 2);
		ImaginaryNumber i2 = new ImaginaryNumber(3, 4);
		System.out.println("Imaginary number i1 = " + i1.toString());
		System.out.println("Imaginary number i2 = " + i2.toString());
		i1.add(i2);
		System.out.println("i1 after addition = " + i1.toString());

		// Subtraction test
		System.out.println("\nSubtraction test");
		ImaginaryNumber num1 = new ImaginaryNumber(6, 2);
		ImaginaryNumber num2 = new ImaginaryNumber(3, 4);
		System.out.println("Imaginary number i1 = " + num1.toString());
		System.out.println("Imaginary number i2 = " + num2.toString());
		num1.sub(num2);
		System.out.println("num1 after subtraction = " + num1.toString());

		// Multiplication test
		System.out.println("\nMultiplication test");
		ImaginaryNumber n1 = new ImaginaryNumber(1, 2);
		ImaginaryNumber n2 = new ImaginaryNumber(3, 4);
		System.out.println("Imaginary number i1 = " + n1.toString());
		System.out.println("Imaginary number i2 = " + n2.toString());
		n1.mul(n2);
		System.out.println("num1 after multiplication = " + n1.toString());

		// Division test
		System.out.println("\nDivision test");
		ImaginaryNumber n = new ImaginaryNumber(1, 2);
		ImaginaryNumber m = new ImaginaryNumber(3, 4);
		System.out.println("Imaginary number i1 = " + n.toString());
		System.out.println("Imaginary number i2 = " + m.toString());
		try {
			n.div(m);
			System.out.println("num1 after division = " + n.toString());
		} catch (ArithmeticException err) {
			System.out.println(err);
		}
	}

	// write the following for complex number
	public void complexTest() {

		System.out.println("\n\nComplex test goes here :");

		// Addition test
		System.out.println("\nAddition test");
		ComplexNumber i1 = new ComplexNumber(1, 2);
		ComplexNumber i2 = new ComplexNumber(3, 4);
		System.out.println("Complex number i1 = " + i1.toString());
		System.out.println("Complex number i2 = " + i2.toString());
		i1.add(i2);
		System.out.println("i1 after addition = " + i1.toString());

		// Subtraction test
		System.out.println("\nSubtraction test");
		ComplexNumber num1 = new ComplexNumber(6, 2);
		ComplexNumber num2 = new ComplexNumber(3, 4);
		System.out.println("Complex number i1 = " + num1.toString());
		System.out.println("Complex number i2 = " + num2.toString());
		num1.sub(num2);
		System.out.println("num1 after subtraction = " + num1.toString());

		// Multiplication test
		System.out.println("\nMultiplication test");
		ComplexNumber n1 = new ComplexNumber(1, 2);
		ComplexNumber n2 = new ComplexNumber(2, 2);
		System.out.println("Complex number i1 = " + n1.toString());
		System.out.println("Complex number i2 = " + n2.toString());
		n1.mul(n2);
		System.out.println("num1 after multiplication = " + n1.toString());

		// Division test
		System.out.println("\nDivision test");
		ComplexNumber n = new ComplexNumber(2, 3);
		ComplexNumber m = new ComplexNumber(2, 1);
		System.out.println("Complex number i1 = " + n.toString());
		System.out.println("Complex number i2 = " + m.toString());
		try {
			n.div(m);
			System.out.println("num1 after division = " + n.toString());
		} catch (ArithmeticException err) {
			System.out.println(err);
		}
	}

	public static void main(String[] args) {
		// Auto-generated method stub
		Tester t = new Tester();
		t.imaginaryTest();
		t.complexTest();
	}

}