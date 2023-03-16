#include "widget.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QSurfaceFormat format;

    format.setSamples(16);
    format.setDepthBufferSize(24);
    QSurfaceFormat::setDefaultFormat(format);


    Widget w;
    w.show();
    return a.exec();
}


/*
 *Задание 1 (главное) : реализовать выбор объектов
 *
 *Задание 2 : добавить больше объектов, унаследовав их от класса SimpleObject3D, и добавлять
 *            меш (данные о точках) внутри них.
 *
 *Задание 3 : добавить настройки света (цвет, силу, положение в зависимости от времени)
 *
*/
