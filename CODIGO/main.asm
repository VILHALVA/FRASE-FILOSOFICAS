section .data
    ; Definição das frases dos filósofos
    frases db "1. Só sei que nada sei. - Sócrates", 0ah
           db "2. Penso, logo existo. - Descartes", 0ah
           db "3. A vida só pode ser compreendida olhando para trás, mas só pode ser vivida olhando para frente. - Søren Kierkegaard", 0ah
           db "4. O homem é a medida de todas as coisas. - Protágoras", 0ah
           db "5. A felicidade é a maior busca do ser humano. - Aristóteles", 0ah
           db "6. Conhece-te a ti mesmo. - Sócrates", 0ah
           db "7. Deus está morto. - Friedrich Nietzsche", 0ah
           db "8. O que não provoca minha morte faz com que eu fique mais forte. - Friedrich Nietzsche", 0ah
           db "9. Não há fatos eternos, como não há verdades absolutas. - Friedrich Nietzsche", 0ah
           db "10. Onde quer que eu vá, eu estou sempre no meu lugar. - Diógenes de Sinope", 0ah
           db "11. Não tenho medo de perder as pessoas, tenho medo de perder a mim mesmo, ao tentar agradá-las. - Søren Kierkegaard", 0ah
           db "12. Se você conhecesse a natureza do universo, você não teria medo da morte. - Sêneca", 0ah
           db "13. Devemos aceitar a decepção finita, mas nunca perder a esperança infinita. - Martin Luther King Jr.", 0ah
           db "14. O homem nasce livre, mas por toda parte está acorrentado. - Jean-Jacques Rousseau", 0ah
           db "15. Cada um é escravo de suas palavras e senhor de seu silêncio. - Provérbio árabe", 0ah
           db "16. Não basta conquistar a sabedoria, é preciso usá-la. - Sócrates", 0ah
           db "17. A ignorância é a maldição do Deus; o conhecimento é o alimento da alma. - Provérbio árabe", 0ah
           db "18. Um homem não é outra coisa senão o que faz de si mesmo. - Jean-Paul Sartre", 0ah
           db "19. A verdadeira sabedoria está em reconhecer a própria ignorância. - Sócrates", 0ah
           db "20. O destino não é uma questão de sorte, mas uma questão de escolha; não é algo a se esperar, mas a se conquistar. - William Jennings Bryan", 0ah
           db "21. A verdade é que ninguém pode saber o que virá, e é por isso que se faz a vida valer a pena. - Sêneca", 0ah
           db "22. A verdadeira medida de um homem não é como ele se comporta em momentos de conforto e conveniência, mas como ele se mantém em tempos de controvérsia e desafio. - Martin Luther King Jr.", 0ah
           db "23. É melhor sofrer uma injustiça do que cometer uma. - Sócrates", 0ah
           db "24. Onde quer que eu vá, eu estou sempre no meu lugar. - Diógenes de Sinope", 0ah
           db "25. A beleza está nos olhos de quem a vê. - Platão", 0ah

section .text
    global _start

_start:
    ; Loop para imprimir as frases
    mov rsi, frases  ; Endereço inicial das frases
    mov rdi, 1       ; Descritor de arquivo 1 (stdout)
    mov rdx, 500     ; Tamanho máximo da mensagem (aproximadamente)
    call print_loop  ; Chama a função para imprimir as frases

    ; Finaliza o programa
    mov rax, 60      ; Chamada para sair do programa
    xor rdi, rdi     ; Código de saída 0
    syscall

; Função para imprimir as frases
print_loop:
    ; Loop para imprimir cada frase
    mov rax, 1       ; Chamada para sys_write
    syscall          ; Faz a syscall para imprimir a frase
    add rsi, rdx     ; Move para o próximo endereço da frase
    loop print_loop  ; Repete até imprimir todas as frases
    ret              ; Retorna ao ponto de chamada
