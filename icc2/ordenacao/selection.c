/*
pior caso O(n²)
melhor caso O(n²) - ele sempre precisa percorrer n n vezes para achar o mínimo
percorre o vetor para achar o menor elemento e troca com o elemento da primeira posição
o método é estável 
*/
void selection_sort(int vet[], int n){
    for (int i = 0; i < n-1; i++){
        int min = i; 
        for (int j = i + 1; j < n; j++){
            if (vet[j] < vet[min])
                min = j; 
        }
        if(i != min){
            int aux = vet[i];
            vet[i] = vet[min];
            vet[min] = aux;
        }
    }
}