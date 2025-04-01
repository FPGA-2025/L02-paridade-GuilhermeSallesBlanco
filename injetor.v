module injetor(
  input [8:0] entrada,   // Palavra de 9 bits (8 dados + 1 paridade)
  input [3:0] n,         // Posição (de 0 a 8) onde o erro será injetado
  input erro,            // Sinal para injetar erro (1) ou não (0)
  output reg [8:0] saida // Palavra de 9 bits com erro injetado (ou não)
);

// n = posição, em 4 bits, de onde o erro vai ficar
// erro = 1 -> injetar erro; 0 -> não injetar erro
// saida = entrada com erro injetado

always @(*) begin
  saida = entrada;  // Inicializa a saída com os dados de entrada

  if (erro == 1) begin
    // Quando erro for 1, inverte o bit na posição n
    // Esta abordagem garante que a operação não tenha efeitos indeterminados
    saida = entrada ^ (1 << n); // XOR com o bit de posição n
  end
end

endmodule
