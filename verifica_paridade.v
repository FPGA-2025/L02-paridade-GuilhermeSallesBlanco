module verifica_paridade (
  input [8:0] dado, // a paridade é o bit mais significativo (dado[8])
  output erro
);

// Para verificar se houve erro de paridade, preciso fazer o XOR dos 8 bits de dados junto com o bit de paridade

assign erro = dado[0] ^ dado[1] ^ dado[2] ^ dado[3] ^ dado[4] ^ dado[5] ^ dado[6] ^ dado[7] ^ dado[8]; // Passando pelo vetor e fazendo o XOR de seus elementos

// 8 bits de entrada concatenado com o bit de paridade (9 bits no total)
// Se a quantidade de bits 1 for par, a saída será 0 (erro = 0)
// Se a quantidade de bits 1 for ímpar, a saída será 1 (erro = 1)

endmodule
