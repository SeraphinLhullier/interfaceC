#ifndef JEU_H
#define JEU_H

#include <QObject>
#include <QString>
#include <vector>
#include <fstream>


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
    Q_PROPERTY(QString scores READ readscore NOTIFY changed)


    Q_INVOKABLE void print();
    Q_INVOKABLE int get_tab(int x, int y);
    Q_INVOKABLE void ajouter_tuile();
    Q_INVOKABLE void deplacer_droite();
    Q_INVOKABLE void deplacer_gauche();
    Q_INVOKABLE void deplacer_haut();
    Q_INVOKABLE void deplacer_bas();
    Q_INVOKABLE void dep_droite();
    Q_INVOKABLE void dep_gauche();
    Q_INVOKABLE void dep_haut();
    Q_INVOKABLE void dep_bas();
    Q_INVOKABLE bool verifier_bas();
    Q_INVOKABLE bool verifier_haut();
    Q_INVOKABLE bool verifier_gauche();
    Q_INVOKABLE bool verifier_droite();
    Q_INVOKABLE void prec();
    Q_INVOKABLE void suiv();
    Q_INVOKABLE void sauver_partie();
    Q_INVOKABLE void charger_partie();
    Q_INVOKABLE void recommencer();

    void sauvegarder();
    void copie(int** a, int** b);


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
    QString readscore();

signals:
    void changed();
    void fin_partie();

private:
    int **tab; //Tableau des tuiles
    size_t pos; //Numéro du tour joué
    std::vector<int**> hist; //Historique des coups joués
    std::vector<int> hscore; //Historique des scores
    int nb_lignes;
    int nb_colonnes;
    int score;


};

#endif // JEU_H
