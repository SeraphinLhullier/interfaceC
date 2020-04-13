#include "jeu.h"
#include <random>
#include <iostream>
#include <iomanip>

using namespace std;

Jeu::Jeu(int lignes, int colonnes, QObject *parent) : QObject(parent)
{
    score=0;
    nb_lignes = lignes;
    nb_colonnes = colonnes;
    pos = -1;
    tab = new int* [nb_lignes];
    for (int i = 0; i< nb_lignes; i++)
        tab[i]=new int[nb_colonnes];

    for (int i = 0 ; i < nb_lignes ; i++)
        for (int j = 0 ; j < nb_colonnes ; j++)
            tab[i][j] = 0;

    ajouter_tuile();
    ajouter_tuile();

    sauvegarder();
}



Jeu::~Jeu() {
    for (int i = 0 ; i < nb_lignes ; i++)
        delete[] tab[i];

    delete[] tab;
    tab = NULL;
    nb_lignes = 0;
    nb_colonnes = 0;
}


void Jeu::copie(int **a, int **b){
    for (int i = 0 ; i < nb_lignes ; i++)
        for (int j = 0 ; j < nb_colonnes ; j++)
            a[i][j] = b[i][j];
}

void Jeu::sauver_partie() {
    ofstream save;
    string line;
    line = "";
    save.open("save.txt",ios::out | ios::trunc);

    if (save.is_open())
      {

        save << nb_lignes << " ";
        save << nb_colonnes << " ";
        save << pos << " " << endl;
        for (size_t p = 0; p<hist.size();p++) {
            for (int i = 0 ; i< nb_lignes ; i++)
                for (int j = 0; j< nb_colonnes ; j++)
                    line += to_string(hist[p][i][j]) + " ";
            line += to_string(hscore[p])+" ";
            save << line <<endl;
            line = "";
        }

        save.close();
      }

      else cout << "Unable to open file";

}


void Jeu::charger_partie() {
    string line;
    string n;
    ifstream save;
    int i = 0;
    save.open("save.txt", ios::in);
    if (save.is_open())
      {
        getline(save,line);
        n = "";
        for (size_t k = 0; k < line.size(); k++)
            if (line[k] == ' '){
                if (i == 0) {
                    nb_lignes = stoi(n);
                    i++;
                }
                if (i==1) {
                    nb_colonnes = stoi(n);
                    i++;
                }
                if (i==2) {
                    pos = stoull(n);
                }
                n = "";
            } else
                n += line[k];

        i = 0;
        n = "";
        hist.clear();
        hscore.clear();
        while (getline (save,line))
        {
            int** sauv;
            sauv = new int* [nb_lignes];
            for (int l = 0; l< nb_lignes; l++)
                sauv[l]=new int[nb_colonnes];

            for (size_t k = 0; k < line.size(); k++){
                if (line[k] == ' ') {
                    if (i == nb_lignes*nb_colonnes) {
                        hscore.push_back(stoi(n));
                        n = "";
                        hist.push_back(sauv);
                        i=0;
                    }
                    else {
                        sauv[i/nb_colonnes][i%nb_colonnes] = stoi(n);
                        n = "";
                        i++;
                    }
                } else
                    n += line[k];
            }
        }
        score = hscore[pos];
        copie(tab,hist[pos]);
        changed();
        save.close();
      }

      else cout << "Unable to open file";

}

void Jeu::sauvegarder(){
    int** sauv;
    sauv = new int* [nb_lignes];
    for (int i = 0; i< nb_lignes; i++)
        sauv[i]=new int[nb_colonnes];

    copie(sauv,tab);
    while (pos<hist.size()-1) {
        hist.pop_back();
        hscore.pop_back();
    }
    int newscore=score;
    hist.push_back(sauv);
    hscore.push_back(newscore);
    pos++;

    changed();

    // std::cout <<std::endl << hist.size() << "     " << pos;
}

void Jeu::print()
{
    std::cout << std::endl;
    for (int i=0; i < nb_lignes; i++)
    {
        for (int j=0; j < nb_colonnes; j++)
        {
            std::cout <<std::setw(5) << tab[i][j];
        }
        std::cout << std::endl;
    }
}

void Jeu::ajouter_tuile() {

    int nb_vide =0;
    for (int i = 0; i < nb_lignes; i++)
        for(int j =0; j < nb_colonnes; j++)
            if (tab[i][j] == 0)
                nb_vide++;

    try {
        int** cases_valides;
        cases_valides = new int*[nb_vide];
        for(int i = 0 ; i < nb_vide; i++)
            cases_valides[i] = new int[2];
        int k = 0;
        for (int i = 0; i < nb_lignes; i++)
            for(int j =0; j <nb_colonnes; j++)
                if (tab[i][j] == 0) {
                    cases_valides[k][0] = i;
                    cases_valides[k][1] = j;
                    k++;
                }
        k = rand()%nb_vide;
        int valeur = 2;
        if (rand()%100 < 20)
            valeur = 4;

        tab[cases_valides[k][0]][cases_valides[k][1]] = valeur;
        for (int i = 0 ; i < nb_vide ; i++) {
            delete[] cases_valides[i];
        }
        delete[] cases_valides;
        cases_valides = NULL;


    } catch (const std::out_of_range& oor) {
        std::cerr << "Out of Range error: " << oor.what() << '\n';
      }



}

bool Jeu::verifier_haut(){
    for (int i = 1; i < nb_lignes;i++)
        for (int j = 0; j < nb_colonnes; j++)
            if(tab[i][j] != 0 and (tab[i-1][j] == tab[i][j] or tab[i-1][j] == 0))
                return true;

    return false;
}

bool Jeu::verifier_bas(){
    for (int i = 0; i < nb_lignes-1;i++)
        for (int j = 0; j < nb_colonnes; j++)
            if(tab[i][j] != 0 and (tab[i+1][j] == tab[i][j] or tab[i+1][j] == 0))
                return true;

    return false;
}

bool Jeu::verifier_gauche(){
    for (int i = 0; i < nb_lignes;i++)
        for (int j = 1; j < nb_colonnes; j++)
            if(tab[i][j] != 0 and (tab[i][j-1] == tab[i][j] or tab[i][j-1] == 0))
                return true;

    return false;
}

bool Jeu::verifier_droite(){
    for (int i = 0; i < nb_lignes;i++)
        for (int j = 0; j < nb_colonnes-1; j++)
            if(tab[i][j] != 0 and (tab[i][j+1] == tab[i][j] or tab[i][j+1] == 0))
                return true;

    return false;
}

void Jeu::deplacer_haut(){
    for (int iter = 0; iter<nb_lignes-1;iter++)
        for (int i=1 ; i<nb_lignes ; i++)
            for (int j=0; j<nb_colonnes ; j++) {
                if(tab[i][j] != 0 and tab[i][j]%2 == 0 and tab[i-1][j] == tab[i][j]) {
                    tab[i-1][j] = 2*tab[i][j]+1;
                    score+=2*tab[i][j];
                    tab[i][j] = 0;
                }
                if(tab[i][j] != 0 and tab[i-1][j] == 0){
                    tab[i-1][j] = tab[i][j];
                    tab[i][j] = 0;
                }
            }
    for (int i = 0;i<nb_lignes;i++)
        for (int j = 0; j < nb_colonnes ; j++)
            if (tab[i][j]%2==1)
                tab[i][j]--;
}

void Jeu::deplacer_bas(){
    for (int iter = 0; iter<nb_lignes-1;iter++)
        for (int i=nb_lignes-2 ; i>=0; i--)
            for (int j=0; j<nb_colonnes ; j++) {
                if(tab[i][j] != 0 and tab[i][j]%2 == 0 and tab[i+1][j] == tab[i][j]) {
                    tab[i+1][j] = 2*tab[i][j]+1;
                    score+=2*tab[i][j];
                    tab[i][j] = 0;
                }
                if(tab[i][j] != 0 and tab[i+1][j] == 0){
                    tab[i+1][j] = tab[i][j];
                    tab[i][j] = 0;
                }
            }
    for (int i = 0;i<nb_lignes;i++)
        for (int j = 0; j < nb_colonnes ; j++)
            if (tab[i][j]%2==1)
                tab[i][j]--;
}

void Jeu::deplacer_gauche(){
    for (int iter = 0; iter<nb_colonnes-1;iter++)
        for (int i=0 ; i<nb_lignes ; i++)
            for (int j=1; j<nb_colonnes ; j++) {
                if(tab[i][j] != 0 and tab[i][j]%2 == 0 and tab[i][j-1] == tab[i][j]) {
                    tab[i][j-1] = 2*tab[i][j]+1;
                    score+=2*tab[i][j];
                    tab[i][j] = 0;
                }
                if(tab[i][j] != 0 and tab[i][j-1] == 0){
                    tab[i][j-1] = tab[i][j];
                    tab[i][j] = 0;
                }
            }
    for (int i = 0;i<nb_lignes;i++)
        for (int j = 0; j < nb_colonnes ; j++)
            if (tab[i][j]%2==1)
                tab[i][j]--;
}

void Jeu::deplacer_droite(){
    for (int iter = 0; iter<nb_lignes;iter++)
        for (int i=0 ; i<nb_lignes ; i++)
            for (int j=nb_colonnes-2; j>=0 ; j--) {
                if(tab[i][j] != 0 and tab[i][j]%2 == 0 and tab[i][j+1] == tab[i][j]) {
                    tab[i][j+1] = 2*tab[i][j]+1;
                    score+=2*tab[i][j];
                    tab[i][j] = 0;
                }
                if(tab[i][j] != 0 and tab[i][j+1] == 0){
                    tab[i][j+1] = tab[i][j];
                    tab[i][j] = 0;
                }
            }
    for (int i = 0;i<nb_lignes;i++)
        for (int j = 0; j < nb_colonnes ; j++)
            if (tab[i][j]%2==1)
                tab[i][j]--;
}

void Jeu::dep_bas(){
    if(verifier_bas()){
        deplacer_bas();
        ajouter_tuile();
        sauvegarder();
    }
}

void Jeu::dep_haut(){
    if(verifier_haut()){
        deplacer_haut();
        ajouter_tuile();
        sauvegarder();
    }
}

void Jeu::dep_droite(){
    if(verifier_droite()){
        deplacer_droite();
        ajouter_tuile();
        sauvegarder();
    }
}

void Jeu::dep_gauche(){
    if(verifier_gauche()){
        deplacer_gauche();
        ajouter_tuile();
        sauvegarder();
    }
}

void Jeu::prec(){
    if (pos >0){
        pos--;
        copie(tab,hist[pos]);
        score=hscore[pos];
        changed();
        // std::cout <<std::endl << hist.size() << "     " << pos;
    }
}

void Jeu::suiv(){
    if (pos < hist.size()-1){
        pos++;
        copie(tab,hist[pos]);
        score=hscore[pos];
        changed();

        // std::cout <<std::endl << hist.size() << "     " << pos;
    }
}

int Jeu::get_tab(int x,int y){
    return tab[x-1][y-1];
}


QString Jeu::readc11(){
    if(get_tab(1,1)!=0)
        return QString::number(get_tab(1,1));
    else
        return QString("");
}

QString Jeu::readc12(){
    if(get_tab(1,2)!=0)
        return QString::number(get_tab(1,2));
    else
        return QString("");
}
QString Jeu::readc13(){
    if(get_tab(1,3)!=0)
        return QString::number(get_tab(1,3));
    else
        return QString("");
}
QString Jeu::readc14(){
    if(get_tab(1,4)!=0)
        return QString::number(get_tab(1,4));
    else
        return QString("");
}

QString Jeu::readc21(){
    if(get_tab(2,1)!=0)
        return QString::number(get_tab(2,1));
    else
        return QString("");
}

QString Jeu::readc22(){
    if(get_tab(2,2)!=0)
        return QString::number(get_tab(2,2));
    else
        return QString("");
}
QString Jeu::readc23(){
    if(get_tab(2,3)!=0)
        return QString::number(get_tab(2,3));
    else
        return QString("");
}
QString Jeu::readc24(){
    if(get_tab(2,4)!=0)
        return QString::number(get_tab(2,4));
    else
        return QString("");
}

QString Jeu::readc31(){
    if(get_tab(3,1)!=0)
        return QString::number(get_tab(3,1));
    else
        return QString("");
}

QString Jeu::readc32(){
    if(get_tab(3,2)!=0)
        return QString::number(get_tab(3,2));
    else
        return QString("");
}
QString Jeu::readc33(){
    if(get_tab(3,3)!=0)
        return QString::number(get_tab(3,3));
    else
        return QString("");
}
QString Jeu::readc34(){
    if(get_tab(3,4)!=0)
        return QString::number(get_tab(3,4));
    else
        return QString("");
}

QString Jeu::readc41(){
    if(get_tab(4,1)!=0)
        return QString::number(get_tab(4,1));
    else
        return QString("");
}

QString Jeu::readc42(){
    if(get_tab(4,2)!=0)
        return QString::number(get_tab(4,2));
    else
        return QString("");
}
QString Jeu::readc43(){
    if(get_tab(4,3)!=0)
        return QString::number(get_tab(4,3));
    else
        return QString("");
}
QString Jeu::readc44(){
    if(get_tab(4,4)!=0)
        return QString::number(get_tab(4,4));
    else
        return QString("");
}

QString Jeu::readscore(){
    return QString::number(score);
}
