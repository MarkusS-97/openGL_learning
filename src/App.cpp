#include <GL/glew.h>
#include <GLFW/glfw3.h>
//#include <OpenGL/gl.h>

#include <iostream>

static unsigned int CompileShader(unsigned int type, const std::string& source)
{
    unsigned int id = glCreateShader(type);
    const char* src = source.c_str();
    glShaderSource(id, 1, &src, nullptr);
    glCompileShader(id);

    int result;
    glGetShaderiv(id, GL_COMPILE_STATUS, &result);
    if(result == GL_FALSE)
    {
        int length; 
        glGetShaderiv(id, GL_INFO_LOG_LENGTH, &length);
        char* message = (char*)malloc(length * sizeof(char));    // trick to allocate memory on the stack
        glGetShaderInfoLog(id, length, &length, message);
        std::cout << "Failed to compile " << (type == GL_VERTEX_SHADER ? "vertex" : "fragment") << " shader!" 
                  << std::endl;
        std::cout << message << std::endl;
        glDeleteShader(id);
        free(message);
    }

    return id;
}

static unsigned int CreateShader(const std::string& vertexShader, const std::string& fragmentSahder)
{
    unsigned int program = glCreateProgram();
    unsigned int vs = CompileShader(GL_VERTEX_SHADER, vertexShader);
    unsigned int fs = CompileShader(GL_FRAGMENT_SHADER, fragmentSahder);

    glAttachShader(program, vs);
    glAttachShader(program, fs);
    glLinkProgram(program);
    glValidateProgram(program);

    glDeleteShader(vs);
    glDeleteShader(fs);

    return program;
}

int main()
{
    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit())
        return -1;

    /* enable use GLSL verison 3.3 */
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);

    /* Create a windowed mode window and its OpenGL context */
    window = glfwCreateWindow(640, 480, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);

    /* Initialize GLEW to use modern OpenGL */
    if (glewInit() != GLEW_OK)
    {
        std::cout << "glewInit() -> error!" << std::endl;
    }

    std::cout << glGetString(GL_VERSION) << std::endl;

    // triangle
    float positions[6] = {
        -0.5f, -0.5f,
         0.0f,  0.5f,
         0.5f, -0.5f
    };

    unsigned int buffer;                    // int holding id of vertex buffer
    glGenVertexArrays(1, &buffer);          // !! creating vertex buffer object (pre. for glVertexAttribPointer; must be called before glGenBuffer)
    glBindVertexArray(buffer);              // bind vertex buffer object 
    glGenBuffers(1, &buffer);               // generate buffer from vertex buffer object and save id to buffer
    glBindBuffer(GL_ARRAY_BUFFER, buffer);  // purpose of buffer -> array (binding)
    glBufferData(GL_ARRAY_BUFFER, 6 * sizeof(float), positions, GL_STATIC_DRAW);    // fill buffer with data

    glEnableVertexAttribArray(0);   // enable following attribute array
    glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(float) * 2, 0); // specify how to interpret buffer

    std::string vertextShader = R"(
        #version 330 core
        layout(location = 0) in vec4 position;
        void main()
        {
           gl_Position = position;
        }
    )";

    std::string fragmentShader = R"(
        #version 330 core
        layout(location = 0) out vec4 color;
        void main()
        {
           color = vec4(1.0, 0.0, 0.0, 1.0);
        }
    )";

    unsigned int shader = CreateShader(vertextShader, fragmentShader);
    glUseProgram(shader);

    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        /* Render here */
        glClear(GL_COLOR_BUFFER_BIT);

        /* draw triangle */
        glDrawArrays(GL_TRIANGLES, 0, 3);

        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
    }

    glfwTerminate();
    return 0;
}

int misc()
{
    return 0;
}