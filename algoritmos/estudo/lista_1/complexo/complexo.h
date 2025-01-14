# ifndef COMPLEXO_H
    # define COMPLEXO_H
    
    typedef struct complexo_ COMPLEXO ;

    COMPLEXO *criar(double real, double imag);
    void liberar(COMPLEXO **c);
    void copiar(COMPLEXO *source, COMPLEXO *target);
    COMPLEXO *adicao(COMPLEXO *a, COMPLEXO *b);
    COMPLEXO *subtracao(COMPLEXO *a, COMPLEXO *b);
    int e_real(COMPLEXO *c);
    double real(COMPLEXO *c);
    double imag(COMPLEXO *c);
    void atribuir(COMPLEXO *c, double real, double imag);
    void atribuir_real(COMPLEXO *c, double real);
    void atribuir_imag(COMPLEXO *c, double imag);

# endif