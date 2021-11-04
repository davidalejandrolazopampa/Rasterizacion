#include <iostream>
#include <GL/glew.h>
//#include <glad/glad.h>
#include <GL/freeglut.h>
#include "glut_ply.h"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

using namespace std;

Model_PLY model;
char *archivo = "../models/cow.ply";

GLuint p1_id;
GLint vertex_id = 0, normal_id = 1;
GLuint matrix_model_id;
float angulo_x;
float escala, tras_x;

glm::mat4 matrix_model = glm::mat4(1.0f); //matrix_view;


char* readShader(char* aShaderFile)
{
    FILE* filePointer = fopen(aShaderFile, "rb");
    char* content = NULL;
    long numVal = 0;

    fseek(filePointer, 0L, SEEK_END);
    numVal = ftell(filePointer);
    fseek(filePointer, 0L, SEEK_SET);
    content = (char*) malloc((numVal+1) * sizeof(char));
    fread(content, 1, numVal, filePointer);
    content[numVal] = '\0';
    fclose(filePointer);
    return content;
}

static void Error(char *message) {
    printf(message);
}

/* Compila shader */
static void CompileShader (GLuint id) {
    GLint status;
    glCompileShader(id);
    glGetShaderiv(id, GL_COMPILE_STATUS, &status);
    if (!status) {
        GLint len;
        glGetShaderiv(id, GL_INFO_LOG_LENGTH, &len);
        char* message = (char*) malloc(len*sizeof(char));
        glGetShaderInfoLog(id, len, 0, message);
        Error(message);
        free(message);
    }
}

/* Link−edita shader */
static void LinkProgram (GLuint id) {
    GLint status;
    glLinkProgram(id);
    glGetProgramiv(id, GL_LINK_STATUS, &status);
    if (!status) {
        GLint len;
        glGetProgramiv(id, GL_INFO_LOG_LENGTH, &len);
        char* message = (char*) malloc(len*sizeof(char));
        glGetProgramInfoLog(id, len, 0, message);
        Error(message);
        free(message);
    }
}

static void CreateShaderProgram (char* vertexShaderFile, char* fragmentShaderFile, GLuint &p_id) {
    char*	vertexShader   = readShader(vertexShaderFile);
    char*	fragmentShader = readShader(fragmentShaderFile);

    /* vertex shader */
    GLuint v_id = glCreateShader(GL_VERTEX_SHADER);
    if (v_id == 0)
        Error("Could not create vertex shader object");

    glShaderSource(v_id, 1, (const char**) &vertexShader, 0);
    CompileShader(v_id);

    /* fragment shader */
    GLuint f_id = glCreateShader(GL_FRAGMENT_SHADER);
    if (f_id == 0)
        Error("Could not create fragment shader object");

    glShaderSource(f_id, 1, (const char**) &fragmentShader, 0);
    CompileShader(f_id);

    /* program */
    p_id = glCreateProgram();
    if (p_id == 0)
        Error("Could not create program object");
    glAttachShader(p_id, v_id);
    glAttachShader(p_id, f_id);
    LinkProgram(p_id);

}


// Initialization routine.
void setup(void) {
    glClearColor(1.0, 1.0, 1.0, 0.0);
    angulo_x = 40.;
    tras_x = 0;
    escala = 0.3;

    //matrix_view.lookAt(10, 10, 10, 0, 0, 0, 0, 1, 0);

    glEnableClientState(GL_VERTEX_ARRAY); // Enable vertex array.
    glEnable(GL_DEPTH_TEST);
    CreateShaderProgram("../basico1.vs","../basico1.fs", p1_id);
    glBindAttribLocation(p1_id, vertex_id, "aPos");
    glBindAttribLocation(p1_id, normal_id, "aNormal");
    cout << "aPos: " << vertex_id << endl;
    cout << "aNormal: " << normal_id << endl;
    matrix_model_id	= glGetUniformLocation(p1_id, "matrix_model");
}

// Drawing routine.
void drawScene(void) {
    int vp[4];
    glGetIntegerv(GL_VIEWPORT, vp);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);


    matrix_model = glm::translate(matrix_model, glm::vec3(tras_x, 0, 0));
    matrix_model = glm::rotate(matrix_model, angulo_x, glm::vec3(1,0,0));

    GLboolean transpose = GL_FALSE;

    glUseProgram(p1_id);
    glVertexAttribPointer(vertex_id, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), model.Vertices);
    glEnableVertexAttribArray(vertex_id);
    glVertexAttribPointer(normal_id, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), model.Normales);
    glEnableVertexAttribArray(normal_id);

    glUniformMatrix4fv(matrix_model_id, 1, transpose, glm::value_ptr(matrix_model));

    //glDrawArrays(GL_TRIANGLES, 0, model.cantVertices);
    glDrawElements(GL_TRIANGLES, model.cantIndices * 3, GL_UNSIGNED_INT, (const void *) model.Indices);

    glDisableVertexAttribArray(vertex_id);
    glDisableVertexAttribArray(normal_id);
    glutSwapBuffers();
}

// OpenGL window reshape routine.
void resize(int w, int h) {
    glViewport(0, 0, (GLsizei) w, (GLsizei) h);
}

// Keyboard input processing routine.
void keyInput(unsigned char key, int x, int y) {
    switch (key) {
        case 27: exit(0);
        case 'A': angulo_x++; break;
        case 'a': angulo_x--; break;
        case 'S': escala += 0.1; break;
        case 's': escala -= 0.1; break;
        case 'X': tras_x += 0.1; break;
        case 'x': tras_x -= 0.1; break;
    }
    glutPostRedisplay();
}

// Main routine.
int main(int argc, char **argv) {
    model.Load(archivo);


    glutInit(&argc, argv);

    //glutInitContextVersion(4, 3);
    glutInitContextProfile(GLUT_COMPATIBILITY_PROFILE);

    glutInitDisplayMode(GLUT_DOUBLE | GLUT_DEPTH | GLUT_RGB);
    glutInitWindowSize(500, 500);
    glutInitWindowPosition(100, 100);
    glutCreateWindow("Visualizando modelo");
    glutDisplayFunc(drawScene);
    glutReshapeFunc(resize);
    glutKeyboardFunc(keyInput);

    glewExperimental = GL_TRUE;
    glewInit();
    // glad: load all OpenGL function pointers
    // ---------------------------------------
    /*if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }*/

    setup();

    glutMainLoop();
    return 0;
}