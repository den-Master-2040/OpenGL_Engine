#ifndef TRANSFORMATION_H
#define TRANSFORMATION_H

class QQuaternion;
class QVector3D;
class QMatrix4x4;
class QOpenGLShaderProgram;
class QOpenGLFunctions;

class Transformation
{
public:
    virtual void rotate(const QQuaternion &r) = 0;
    virtual void translate(const QVector3D) = 0;
    virtual void scale(const float &s) = 0;
    virtual void transform(const QMatrix4x4 &g) = 0;
    virtual void draw(QOpenGLShaderProgram *program, QOpenGLFunctions * functions) = 0;

};

#endif // TRANSFORMATION_H
