

// main function

int main (int argc, char **argv) 
// This is the main function of the program. It takes two parameters - an integer argc and a character pointer **argv. These parameters are used to pass command line arguments to the program.
glutInit (&argc, argv) 
// This function initializes the GLUT library and takes the command line arguments passed to the program.
glutInitDisplayMode (GLUT_SINGLE | GLUT_RGB) 
// This function sets the display mode for the window. In this case, it specifies that the window should use a single buffer and RGB color mode.
glutInitWindowPosition (500, 0) 
// This function sets the initial position of the window. In this case, it sets the position to (500, 0) on the screen.
glutInitWindowSize (1000, 1000) 
// This function sets the size of the window. In this case, it sets the size to 1000 x 1000 pixels.
glutCreateWindow ("2D TRANSFORMATION OVER THE TRIANGLE") 
// This function creates a window with the specified title.
glutDisplayFunc (myDisplay) 
// This function sets the function that will be called when the window is displayed. In this case, it sets the function myDisplay as the display function.
myInit () : This is a user-defined function that initializes the OpenGL environment
glutMainLoop () : This function enters the main loop of the program, where it listens for events such as keyboard and mouse input.
return 0; : This statement indicates that the program has ended and returns 0 to the operating system.