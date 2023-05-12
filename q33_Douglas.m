clear;

clc;

# Aluno: Douglas Mateus Soares Cândido da Silva

# Questão 33.

# Polinômio: p(t) = a0 + a1t + a2t^2
# O grau do polinômio é 2.

# Sistema de equações:
# a0 + a1(1) + a2(1)^2 = 6
# a0 + a1(2) + a2(2)^2 = 15
# a0 + a1(3) + a2(3)^2 = 28

# data = [1, 6; 2, 15; 3, 28];

# Forma matricial: [1 1 1; 1 2 4; 1 3 9] * [a0; a1; a2] = [6; 15; 28]

A = [1 1 1 6; 1 2 4 15; 1 3 9 28]; # Matriz ampliada

a_escalonada = rref(A); # Função que escalona a matriz ampliada utilizando a Eliminação de Gauss-Jordan

# Com isso, descobri os coeficientes do polinômio interpolador:
# a0 = 1
# a1 = 3
# a2 = 2

# Polinômio interpolador = 2t^2 + 3t + 1

t = [1; 2; 3];

y = 2*t.^2 + 3*t + 1;

plot(t, y, "linewidth", 2, "color", "r");
xlabel("Eixo x");
ylabel("Eixo y");
title("Gráfico do Polinômio Interpolador y = 2t^2 + 3t + 1");
grid on;


