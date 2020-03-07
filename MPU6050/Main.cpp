/*
 * The MIT License
 *
 * Copyright 2020 Thinh Pham.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#ifdef MPU6050_DMP6
#include "examples/MPU6050_DMP6/MPU6050_DMP6.ino"
#elif defined MPU6050_RAW
#include "examples/MPU6050_raw/MPU6050_raw.ino"
#elif defined MPU6050_TEAPOT
#include "Teapot.h"
#endif

/*
 * Simulates Arduino's lifecycle.
 */
int main(int argc, char *argv[]) {
    wiringPiSetup();
    
#ifdef MPU6050_TEAPOT
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_ALPHA | GLUT_DEPTH | GLUT_STENCIL);
    glutInitWindowSize(WINDOW_WIDTH, WINDOW_HEIGHT);
    glutInitWindowPosition(200, 100);
    glutCreateWindow("MPU6050 Demo");
    glutDisplayFunc(GLUT_display);
    glutReshapeFunc(GLUT_reshape);
    setup();
    glutMainLoop();
#else
    setup();
    while (true)
        loop();
#endif
    
    return 0;
}
