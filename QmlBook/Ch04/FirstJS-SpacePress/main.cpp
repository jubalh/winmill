#include <QGuiApplication>
#include <QQuickView>

int main(int argc, char *argv[])
{
   QGuiApplication app(argc, argv);

   /*
   QQmlApplicationEngine engine;
   engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
   if (engine.rootObjects().isEmpty())
      return -1;
    */

   // Use QuickView instead
   QQuickView *view = new QQuickView;
   view->setSource(QUrl(QStringLiteral("qrc:/main.qml")));
   view->show();

   return app.exec();
}
