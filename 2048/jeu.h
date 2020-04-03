#ifndef JEU_H
#define JEU_H

class Jeu
{
public:
    Jeu(int lignes,int colonnes);
    ~Jeu();

    void print();
    void get_tab();
    void ajouter_tuile();
    void deplacer_droite();
    void deplacer_gauche();
    void deplacer_haut();
    void deplacer_bas();
    bool verifier_bas();
    bool verifier_haut();
    bool verifier_gauche();
    bool verifier_droite();

private:
    int **tab;
    int nb_lignes;
    int nb_colonnes;
};

#endif // JEU_H
