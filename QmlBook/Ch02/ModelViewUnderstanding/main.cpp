// https://qmlbook.github.io/en/ch02/index.html#application-types
// http://doc.qt.io/qt-5/qtquick-modelviewsdata-modelview.html

#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
   QGuiApplication app(argc, argv);

   QQmlApplicationEngine engine;
   engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
   if (engine.rootObjects().isEmpty())
      return -1;

   return app.exec();
}
