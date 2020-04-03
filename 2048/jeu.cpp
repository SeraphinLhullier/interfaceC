#include "jeu.h"
#include <random>
#include <iostream>
#include <iomanip>

Jeu::Jeu(int lignes, int colonnes)
{
    nb_lignes = lignes;
    nb_colonnes = colonnes;
    tab = new int* [nb_lignes];
    for (int i = 0; i< nb_lignes; i++)
        tab[i]=new int[nb_colonnes];

    for (int i = 0 ; i < nb_lignes ; i++)
        for (int j = 0 ; j < nb_colonnes ; j++)
            tab[i][j] = 0;

    ajouter_tuile();
}


Jeu::~Jeu() {
    for (int i = 0 ; i < nb_lignes ; i++)
        delete[] tab[i];

    delete[] tab;
    tab = NULL;
    nb_lignes = 0;
    nb_colonnes = 0;
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

