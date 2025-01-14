#ifndef PONTO_H
    #define PONTO_H
    #include <stdbool.h> 

    typedef struct ponto_ PONTO;

    PONTO *ponto_criar (float x, float y);
    void ponto_apagar (PONTO **p);
    bool ponto_set (PONTO *p, float x, float y);
    float distancia(PONTO *p, PONTO *centro); 
    //coloquei essa função aqui, pois embora eu veja a distância 
    //entre ponto e círculo, no fundo é a distância de dois pontos 

#endif
