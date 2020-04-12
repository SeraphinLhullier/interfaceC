#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtWidgets/QWidget>
#include <iostream>
#include <time.h>

#include "jeu.h"
#include <QtQml>
int main(int argc, char *argv[])
{
    srand(time(NULL));
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    Jeu jeu(4,4);
    jeu.ajouter_tuile();
//    j.print();
//    for (int i = 0 ; i<1000; i++){
//        j.deplacer_droite();
//        j.ajouter_tuile();
//        std::cout << j.verifier_bas() << j.verifier_haut() << j.verifier_droite() << j.verifier_gauche() <<std::endl;
//        if (j.verifier_bas() + j.verifier_haut() +j.verifier_droite() + j.verifier_gauche() == 0)
//            break;
//        j.deplacer_bas();
//        j.ajouter_tuile();
//        std::cout << j.verifier_bas() << j.verifier_haut() << j.verifier_droite() << j.verifier_gauche() <<std::endl;
//        if (j.verifier_bas() + j.verifier_haut() +j.verifier_droite() + j.verifier_gauche() == 0)
//            break;
//        j.deplacer_gauche();
//        j.ajouter_tuile();
//        std::cout << j.verifier_bas() << j.verifier_haut() << j.verifier_droite() << j.verifier_gauche() <<std::endl;
//        if (j.verifier_bas() + j.verifier_haut() +j.verifier_droite() + j.verifier_gauche() == 0)
//            break;
//        j.deplacer_haut();
//        j.ajouter_tuile();
//        std::cout << j.verifier_bas() << j.verifier_haut() << j.verifier_droite() << j.verifier_gauche() <<std::endl;
//        if (j.verifier_bas() + j.verifier_haut() +j.verifier_droite() + j.verifier_gauche() == 0)
//            break;
//    }
//    j.print();

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
