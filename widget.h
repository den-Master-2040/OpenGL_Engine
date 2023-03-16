#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include <QtOpenGL>
#include <QMatrix4x4>
#include <QOpenGLShaderProgram>
#include <QOpenGLTexture>
#include <QOpenGLBuffer>
#include <iostream>
#include <simpleobject3d.h>

class Widget : public QOpenGLWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();
protected:
    void initializeGL() override;
    void resizeGL(int w, int h) override;
    void paintGL() override;
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);
    void wheelEvent(QWheelEvent *event);
    void initShaders();
    void initCube(float width, QImage texture);
    int selectObject(int x, int y, QVector<SimpleObject3D *> &objs );

private:
    QMatrix4x4 m_projectionMatrix;
    QMatrix4x4 viewMatrix;
    QOpenGLShaderProgram m_program;
    QOpenGLShaderProgram m_programSelect;
    QQuaternion m_rotation;
    QVector2D m_mousePosition;
    QVector<SimpleObject3D *> m_objects;
    float m_z = 0;
};
#endif // WIDGET_H
