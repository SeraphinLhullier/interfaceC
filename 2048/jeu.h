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

    Q_PROPERTY(QString c11 READ readc11 NOTIFY changed)
    Q_PROPERTY(QString c12 READ readc12 NOTIFY changed)
    Q_PROPERTY(QString c13 READ readc13 NOTIFY changed)
    Q_PROPERTY(QString c14 READ readc14 NOTIFY changed)
    Q_PROPERTY(QString c21 READ readc21 NOTIFY changed)
    Q_PROPERTY(QString c22 READ readc22 NOTIFY changed)
    Q_PROPERTY(QString c23 READ readc23 NOTIFY changed)
    Q_PROPERTY(QString c24 READ readc24 NOTIFY changed)
    Q_PROPERTY(QString c31 READ readc31 NOTIFY changed)
    Q_PROPERTY(QString c32 READ readc32 NOTIFY changed)
    Q_PROPERTY(QString c33 READ readc33 NOTIFY changed)
    Q_PROPERTY(QString c34 READ readc34 NOTIFY changed)
    Q_PROPERTY(QString c41 READ readc41 NOTIFY changed)
    Q_PROPERTY(QString c42 READ readc42 NOTIFY changed)
    Q_PROPERTY(QString c43 READ readc43 NOTIFY changed)
    Q_PROPERTY(QString c44 READ readc44 NOTIFY changed)


    Q_INVOKABLE void print();
    Q_INVOKABLE int get_tab(int x, int y);
    Q_INVOKABLE void ajouter_tuile();
    Q_INVOKABLE void deplacer_droite();
    Q_INVOKABLE void deplacer_gauche();
    Q_INVOKABLE void deplacer_haut();
    Q_INVOKABLE void deplacer_bas();
    Q_INVOKABLE bool verifier_bas();
    Q_INVOKABLE bool verifier_haut();
    Q_INVOKABLE bool verifier_gauche();
    Q_INVOKABLE bool verifier_droite();

    QString readc11();
    QString readc12();
    QString readc13();
    QString readc14();
    QString readc21();
    QString readc22();
    QString readc23();
    QString readc24();
    QString readc31();
    QString readc32();
    QString readc33();
    QString readc34();
    QString readc41();
    QString readc42();
    QString readc43();
    QString readc44();

signals:
    void changed();

private:
    int **tab;
    int nb_lignes;
    int nb_colonnes;


};

#endif // JEU_H
