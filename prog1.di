start_begin():

    float nota1, float nota2, float media
    >>escreva "sua primeira nota:"
    <<leia num1
    >>escreva "sua segunda nota:"
    <<leia num2 #passem

    media = num1 + num2/2
    >>escreva "sua media foi:"
    >>escreva (media)

    @se media > 7
        >>escreva "vc esta aprovado"
    @se nao 
        >>escreva "vc esta reprovado"

    @while (media == 10)
    >>escreva "wow melhor aluno"

THATS_ALL_FOLKS
