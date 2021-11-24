#include <stdio.h>

void print(int *vetor, int tamanho) {
    for(int i = 0; i < tamanho; i++) {
        printf("%d ", vetor[i]);
    }
    printf("\n");
}

extern void ordena(int *vetor, int tamanho);

int main() {
    
    int vetor[10], tamanho;
    printf("Bernardo pediu pra voce inserir o tamanho do vetor:\n");
    scanf("%d", &tamanho);

    for(int i = 0; i < tamanho; i++) 
        scanf("%d", &vetor[i]);

    ordena(vetor, tamanho);
    print(vetor, tamanho);
    return 0;
}