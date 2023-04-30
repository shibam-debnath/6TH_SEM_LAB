package org.biki_pack2;

// Abstract classes can't be used directly because they are incomplete.
// For e.g., the toString() function is not defined here. To use them,
// you must extend them.

// Usually abstract classes are used to maintain uniformity throughout
// an application, so that incomplete classes can be used in various parts
// developed by various developers so that they integrate seamlessly

public abstract class AbstractVector2D {
	protected float x, y, root; // Protected variables are like private
	// variables, but accessible to the
	// subclasses

	public AbstractVector2D(float x, float y) {
		// Auto-generated constructor stub
		this.x = x;
		this.y = y;
	}

	// Override/define these in subclass.
	public abstract String toString();

	public abstract void add(AbstractVector2D v);

	public abstract void sub(AbstractVector2D v);

	public abstract void mul(AbstractVector2D v);

	public abstract void div(AbstractVector2D v) throws ArithmeticException;
}
