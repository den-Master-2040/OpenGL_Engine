/*
 * В данном проекте реализована матрица наблюдения модели(камера) - viewMatrix,
 * и матрица проекции (объекты) - m_projectionMatrix. На данный момент вращение
 * происходит за счёт изменения матрица наблюдения модели, то есть, грубо говоря,
 * происходит вращение камеры.
*/

#include "widget.h"
#include <QOpenGLContext>
#include <simpleobject3d.h>
Widget::Widget(QWidget *parent)
    : QOpenGLWidget(parent)
{
}

Widget::~Widget()
{
}

void Widget::initializeGL()
{
    glClearColor(0.0f,0.0f,0.0f,1.0f);

    glEnable(GL_DEPTH_TEST);                //включение буфера глубины
    glEnable(GL_CULL_FACE);                 //отключение отрисовки внутренних граней

    initShaders();
    initCube(1.0f,QImage(":/cube2.png"));
    m_objects[0]->translate(QVector3D(-1.2,0.0,0.0));
    initCube(1.0f,QImage(":/cube.png"));
}

/*Обычно в этой функции описывается матрица проекции,
 *которую используют для отображения*/
void Widget::resizeGL(int w, int h)
{
    //угол усечённого конуса для области видимости камеры
    int camera_angle = 45;

    //отношение ширины к высоте
    float aspect = w / (h ? (float)h : 1);

/* После этой функции setToIdentity матрица (m_projectionMatrix) становится единичной,
 * то есть на главной диагонали у неё стоят единицы, остальные элементы равны нулю.*/
    m_projectionMatrix.setToIdentity();


    //задается исходные данные по вершине.
    m_projectionMatrix.perspective(camera_angle, aspect, 0.01f,100.0f);
}

void Widget::paintGL()
{
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    //
    //--------------------------------------------------------------------------------------------
    //
                    //создаем видовую матрицу (камеру)
    viewMatrix.setToIdentity();
    viewMatrix.translate(0.0f,0.0f,-5.0f); //отодвигаем камеру назад
    viewMatrix.translate(0.0f,0.0f, m_z);
    viewMatrix.rotate(m_rotation);
    viewMatrix.scale(1.5f);


    m_program.bind();
    m_program.setUniformValue("u_ligthPowers",float(5.0));
    m_program.setUniformValue("u_projectionMatrix",m_projectionMatrix);
    m_program.setUniformValue("u_viewMatrix",viewMatrix);
    m_program.setUniformValue("u_lightPosition", QVector4D(0.0, 0.0, 0.0, 1.0));


    for(int i = 0; i < m_objects.size();++i)
    {
        m_objects[i]->draw(&m_program,context()->functions());
    }

 }

void Widget::mousePressEvent(QMouseEvent *event)
{
    if(event->buttons() == Qt::LeftButton)
    {
        m_mousePosition = QVector2D(event->localPos());
    }
    event->accept();
}

void Widget::mouseMoveEvent(QMouseEvent *event)
{
    if(event->buttons() != Qt::LeftButton)
    {
        std::cout<<selectObject(event->localPos().x(),event->localPos().y(),m_objects) << std::endl;
        return;
    }
    QVector2D diff = QVector2D(event->localPos()) - m_mousePosition;
    m_mousePosition = QVector2D(event->localPos());

    float angle = diff.length() / 2.0;

    QVector3D axis = QVector3D(diff.y(),diff.x(),0.0);

    m_rotation = QQuaternion::fromAxisAndAngle(axis,angle) * m_rotation;
    update();
}

void Widget::wheelEvent(QWheelEvent *event)
{
    if(event->delta() > 0){
        m_z+=0.25f;
    }else if(event->delta() < 0)
    {
        m_z -= 0.25f;
    }
    update();
}


void Widget::initShaders()
{
    if(!m_program.addShaderFromSourceFile(QOpenGLShader::Vertex,":/vshader.vsh"))
        close();
    if(!m_program.addShaderFromSourceFile(QOpenGLShader::Fragment,":/fshader.fsh"))
        close();
    if(!m_program.link())
        close();

    if(!m_programSelect.addShaderFromSourceFile(QOpenGLShader::Vertex,":/select.vsh"))
        close();
    if(!m_programSelect.addShaderFromSourceFile(QOpenGLShader::Fragment,":/select.fsh"))
        close();
    if(!m_programSelect.link())
        close();
}

void Widget::initCube(float width, QImage texture)
{
    float width_div_2 = width / 2.0f;
    QVector<VertexData> vertexes;
    vertexes.append(VertexData(QVector3D(-width_div_2, width_div_2, width_div_2),QVector2D(0.0,1.0),QVector3D(0.0,0.0,1.0)));
    vertexes.append(VertexData(QVector3D(-width_div_2,-width_div_2, width_div_2),QVector2D(0.0,0.0),QVector3D(0.0,0.0,1.0)));
    vertexes.append(VertexData(QVector3D( width_div_2, width_div_2, width_div_2),QVector2D(1.0,1.0),QVector3D(0.0,0.0,1.0)));
    vertexes.append(VertexData(QVector3D( width_div_2,-width_div_2, width_div_2),QVector2D(1.0,0.0),QVector3D(0.0,0.0,1.0)));

    vertexes.append(VertexData(QVector3D( width_div_2, width_div_2, width_div_2),QVector2D(0.0,1.0),QVector3D(1.0,0.0,0.0)));
    vertexes.append(VertexData(QVector3D( width_div_2,-width_div_2, width_div_2),QVector2D(0.0,0.0),QVector3D(1.0,0.0,0.0)));
    vertexes.append(VertexData(QVector3D( width_div_2, width_div_2,-width_div_2),QVector2D(1.0,1.0),QVector3D(1.0,0.0,0.0)));
    vertexes.append(VertexData(QVector3D( width_div_2,-width_div_2,-width_div_2),QVector2D(1.0,0.0),QVector3D(1.0,0.0,0.0)));

    vertexes.append(VertexData(QVector3D( width_div_2, width_div_2, width_div_2),QVector2D(0.0,1.0),QVector3D(0.0,1.0,0.0)));
    vertexes.append(VertexData(QVector3D( width_div_2, width_div_2,-width_div_2),QVector2D(0.0,0.0),QVector3D(0.0,1.0,0.0)));
    vertexes.append(VertexData(QVector3D(-width_div_2, width_div_2, width_div_2),QVector2D(1.0,1.0),QVector3D(0.0,1.0,0.0)));
    vertexes.append(VertexData(QVector3D(-width_div_2, width_div_2,-width_div_2),QVector2D(1.0,0.0),QVector3D(0.0,1.0,0.0)));

    vertexes.append(VertexData(QVector3D( width_div_2, width_div_2,-width_div_2),QVector2D(0.0,1.0),QVector3D(0.0,0.0,-1.0)));
    vertexes.append(VertexData(QVector3D( width_div_2,-width_div_2,-width_div_2),QVector2D(0.0,0.0),QVector3D(0.0,0.0,-1.0)));
    vertexes.append(VertexData(QVector3D(-width_div_2, width_div_2,-width_div_2),QVector2D(1.0,1.0),QVector3D(0.0,0.0,-1.0)));
    vertexes.append(VertexData(QVector3D(-width_div_2,-width_div_2,-width_div_2),QVector2D(1.0,0.0),QVector3D(0.0,0.0,-1.0)));

    vertexes.append(VertexData(QVector3D(-width_div_2, width_div_2, width_div_2),QVector2D(0.0,1.0),QVector3D(-1.0,0.0,0.0)));
    vertexes.append(VertexData(QVector3D(-width_div_2, width_div_2,-width_div_2),QVector2D(0.0,0.0),QVector3D(-1.0,0.0,0.0)));
    vertexes.append(VertexData(QVector3D(-width_div_2,-width_div_2, width_div_2),QVector2D(1.0,1.0),QVector3D(-1.0,0.0,0.0)));
    vertexes.append(VertexData(QVector3D(-width_div_2,-width_div_2,-width_div_2),QVector2D(1.0,0.0),QVector3D(-1.0,0.0,0.0)));

    vertexes.append(VertexData(QVector3D(-width_div_2,-width_div_2, width_div_2),QVector2D(0.0,1.0),QVector3D(0.0,-1.0,0.0)));
    vertexes.append(VertexData(QVector3D(-width_div_2,-width_div_2,-width_div_2),QVector2D(0.0,0.0),QVector3D(0.0,-1.0,0.0)));
    vertexes.append(VertexData(QVector3D( width_div_2,-width_div_2, width_div_2),QVector2D(1.0,1.0),QVector3D(0.0,-1.0,0.0)));
    vertexes.append(VertexData(QVector3D( width_div_2,-width_div_2,-width_div_2),QVector2D(1.0,0.0),QVector3D(0.0,-1.0,0.0)));

    QVector<GLuint> indexes;

    for(int i = 0; i < 24; i += 4)
    {
        indexes.append(i + 0);
        indexes.append(i + 1);
        indexes.append(i + 2);
        indexes.append(i + 2);
        indexes.append(i + 1);
        indexes.append(i + 3);
    }

    m_objects.append(new SimpleObject3D(vertexes,indexes,texture));
}

int Widget::selectObject(int x, int y, QVector<SimpleObject3D *> &objs)
{
    glViewport(0,0,width(),height());

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glEnable(GL_DEPTH_TEST);

    m_programSelect.bind();

    m_programSelect.setUniformValue("u_projectionMatrix", m_projectionMatrix);
    m_programSelect.setUniformValue("u_viewMatrix",viewMatrix);
    for(int i = 0; i < objs.size();i++)
    {
        m_programSelect.setUniformValue("u_code",(float)(i+1));
        objs[i]->draw(&m_programSelect,context()->functions());
    }

    m_programSelect.release();

    GLint viewport[4];
    glGetIntegerv(GL_VIEWPORT, viewport);
    unsigned char res[4];

    glReadPixels(x, viewport[3] - y,1,1, GL_RGBA, GL_UNSIGNED_BYTE, &res);



    glDisable(GL_DEPTH_TEST);

    return res[0];
}
