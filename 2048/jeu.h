#ifndef JEU_H
#define JEU_H

#include <QObject>
#include <QString>


class Jeu : public QObject
{
    Q_OBJECT
public:
    explicit Jeu(int lignes,int colonnes,QObject *parent=nullptr);
    ~Jeu();

//    Q_PROPERTY(QString c11 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c12 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c13 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c14 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c21 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c22 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c23 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c24 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c31 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c32 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c33 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c34 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c41 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c42 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c43 READ readc11 NOTIFY changed)
//    Q_PROPERTY(QString c44 READ readc11 NOTIFY changed)


    Q_INVOKABLE void print();
//    Q_INVOKABLE void get_tab();
    Q_INVOKABLE void ajouter_tuile();
    Q_INVOKABLE void deplacer_droite();
    Q_INVOKABLE void deplacer_gauche();
    Q_INVOKABLE void deplacer_haut();
    Q_INVOKABLE void deplacer_bas();
    Q_INVOKABLE bool verifier_bas();
    Q_INVOKABLE bool verifier_haut();
    Q_INVOKABLE bool verifier_gauche();
    Q_INVOKABLE bool verifier_droite();

signals:
    void changed();

private:
    int **tab;
    int nb_lignes;
    int nb_colonnes;


};

#endif // JEU_H
