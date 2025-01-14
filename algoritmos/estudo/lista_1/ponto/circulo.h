#ifndef CIRCULO_H
    #define CIRCULO_H
    #include "ponto.h"

    typedef struct circulo_ CIRCULO;

    CIRCULO *circulo_criar (float c, float y, float raio);
    void circulo_apagar (CIRCULO **circulo);
    float circulo_area (CIRCULO *circulo);
    PONTO *circulo_centro(CIRCULO *c);
    float circulo_raio(CIRCULO *c);


#endif
