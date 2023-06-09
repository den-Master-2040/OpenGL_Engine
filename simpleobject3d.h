#ifndef SIMPLEOBJECT3D_H
#define SIMPLEOBJECT3D_H

#include <QOpenGLBuffer>
#include <QMatrix4x4>
#include <QVector2D>
#include <transformation.h>

class QOpenGLTexture;
class QOpenGLFunctions;
class QOpenGLShaderProgram;

struct VertexData
{
    VertexData(){}

    VertexData(QVector3D p, QVector2D t, QVector3D n)
        : position(p),texCoord(t),normal(n)
    {

    }
    QVector3D position;
    QVector2D texCoord;
    QVector3D normal;
};

class SimpleObject3D
{
public:
    SimpleObject3D();
    SimpleObject3D(const QVector<VertexData> &vertData,const QVector<GLuint> &indexes, const QImage &texture );
    SimpleObject3D( float width, QImage texture );
    ~SimpleObject3D();
    void Init(const QVector<VertexData> &vertData,const QVector<GLuint> &indexes, const QImage &texture);
    void draw(QOpenGLShaderProgram *program, QOpenGLFunctions * functions);
    void translate(const QVector3D translatevector);

    /*void rotate(const QQuaternion &r);
    void scale(const float &s);
    void transform(const QMatrix4x4 &g);
*/
private:
    QOpenGLBuffer m_vertexBuffer;
    QOpenGLBuffer m_indexBuffer;
    QMatrix4x4 m_modelMatrix;
    QOpenGLTexture *m_texture;

    QQuaternion m_rotate;
};

#endif // SIMPLEOBJECT3D_H
