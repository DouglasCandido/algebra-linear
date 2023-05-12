clear;

clc;

# Aluno: Douglas Mateus Soares Cândido da Silva

# Questão 34: Experimento do Túnel de Vento.

# Polinômio: p(t) = a0 + a1t + a2t^2 + a3t^3 + a4t^4 + a5t^5
# O grau do polinômio é 5.

# Sistema de equações:
# a0 + a1(0) + a2(0)^2 + a3(0)^3 + a4(0)^4 + a5(0)^5 = 0
# a0 + a1(2) + a2(2)^2 + a3(2)^3 + a4(2)^4 + a5(2)^5 = 2.90
# a0 + a1(4) + a2(4)^2 + a3(4)^3 + a4(4)^4 + a5(4)^5 = 14.8
# a0 + a1(6) + a2(6)^2 + a3(6)^3 + a4(6)^4 + a5(6)^5 = 39.6
# a0 + a1(8) + a2(8)^2 + a3(8)^3 + a4(8)^4 + a5(8)^5 = 74.3
# a0 + a1(10) + a2(10)^2 + a3(10)^3 + a4(10)^4 + a5(10)^5 = 119

# data = [0, 0; 2, 2.90; 4, 14.8; 6, 39.6; 8, 74.3; 10, 119];

# Forma matricial: [1 0 0 0 0 0; 1 2 4 8 16 32; 1 4 16 64 256 1024; 1 6 36 216 1296 7776; 1 8 64 512 4096 32768; 1 10 100 1000 10000 100000] * [a0; a1; a2; a3; a4; a5] = [0; 2.90; 14.8; 39.6; 74.3; 119]

B = [1 0 0 0 0 0 0; 1 2 4 8 16 32 2.90; 1 4 16 64 256 1024 14.8; 1 6 36 216 1296 7776 39.6; 1 8 64 512 4096 32768 74.3; 1 10 100 1000 10000 100000 119]; # Matriz ampliada

b_escalonada = rref(B); # Função que escalona a matriz ampliada utilizando a Eliminação de Gauss-Jordan

# Com isso, descobri os coeficientes do polinômio interpolador:
# a0 = 0
# a1 = 1.7125
# a2 = -1.1948
# a3 = 0.66146
# a4 = -0.070052
# a5 = 0.0026042

# Polinômio interpolador = 0.0026042t^5 - 0.070052t^4 + 0.66146t^3 - 1.1948t^2 + 1.7125t + 0

t = [0; 2; 4; 6; 8; 10];

y = 0.0026042*t.^5 - 0.070052*t.^4 + 0.66146*t.^3 - 1.1948*t.^2 + 1.7125*t + 0;

plot(t, y, ":", "linewidth", 3, "color", "b");
xlabel("Eixo x = Velocidade (ft/sec)");
ylabel("Eixo y = Força (lb)");
title("Gráfico do Polinômio Interpolador (Utilizado no Experimento do Túnel de Vento) y = 0.0026042t^5 - 0.070052t^4 + 0.66146t^3 - 1.1948t^2 + 1.7125t + 0");
grid on;

coeficientes = [0, 1.7125, -1.1948, 0.66146, -0.070052, 0.0026042]; # Coeficientes do Polinômio Interpolador, será utilizado para fazer uma estimativa da força do projétil quando ele está viajando a uma velocidade de 750 ft/sec (Pés por segundo)

velocity = 750;

projectile_estimated_force = polyval(coeficientes, velocity);

# A força estimada do projétil será de 541342018893.7136 lb (Libras) quando ele estiver viajando em uma velocidade de 750 ft/sec.

# --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Parte 2: O que acontece se tentar utilizar um polinômio de grau menor do que 5? (Tente utilizar um polinômio cúbico, por exemplo.)

# Polinômio: p(t) = a0 + a1t + a2t^2 + a3t^3
# O grau do polinômio é 3.

# Sistema de equações:
# a0 + a1(0) + a2(0)^2 + a3(0)^3 = 0
# a0 + a1(2) + a2(2)^2 + a3(2)^3 = 2.90
# a0 + a1(4) + a2(4)^2 + a3(4)^3 = 14.8
# a0 + a1(6) + a2(6)^2 + a3(6)^3 = 39.6
# a0 + a1(8) + a2(8)^2 + a3(8)^3 = 74.3
# a0 + a1(10) + a2(10)^2 + a3(10)^3 = 119

# data = [0, 0; 2, 2.90; 4, 14.8; 6, 39.6; 8, 74.3; 10, 119];

# Forma matricial: [1 0 0 0; 1 2 4 8; 1 4 16 64; 1 6 36 216; 1 8 64 512; 1 10 100 1000] * [a0; a1; a2; a3] = [0; 2.90; 14.8; 39.6; 74.3; 119]

C = [1 0 0 0 0; 1 2 4 8 2.90; 1 4 16 64 14.8; 1 6 36 216 39.6; 1 8 64 512 74.3; 1 10 100 1000 119]; # Matriz ampliada

c_escalonada = rref(C); # Função que escalona a matriz ampliada utilizando a Eliminação de Gauss-Jordan

# Com isso, descobri os coeficientes do polinômio:
# a0 = 0
# a1 = 0
# a2 = 0
# a3 = 0

# Percebe-se que o polinômio ficou completamente zerado (Nulo), pois seus coeficientes são iguais à zero. Também percebe-se que, ao utilizar um polinômio de grau 3, a ordem da matriz mudou para 6x5, ou seja, 6 linhas e 5 colunas.


