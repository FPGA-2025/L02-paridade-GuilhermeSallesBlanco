module calcula_paridade (
  input [7:0] dado,
  output paridade
);

// De acordo com a tabela verdade do bit de paridade par, ele é apenas um XOR, que tem uma saída 1 quando
// a quantidade de bits 1 for ímpar.

assign paridade = dado[0] ^ dado[1] ^ dado[2] ^ dado[3] ^ dado[4] ^ dado[5] ^ dado[6] ^ dado[7]; // Passando pelo vetor e fazendo o XOR de seus elementos

endmodule
