#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtWidgets/QWidget>
#include <iostream>
#include <time.h>

#include "jeu.h"
#include <QtQml>
int main(int argc, char *argv[])
{
    srand(time(NULL)); // Permet d'initialiser le pseudo aléatoire utilisé par le programme

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    Jeu jeu(4,4);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.rootContext()->setContextProperty("jeu", &jeu);
    engine.load(url);

    return app.exec();
}
