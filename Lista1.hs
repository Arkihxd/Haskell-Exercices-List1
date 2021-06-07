module Lista1 where
{- autor: Mateus Oliveira de Souza -}

{- 1. Declare uma função que receba as 3 medidas dos lados de um triangulo, a função deve informar se as medidas podem formar um triângulo Retornando a True em caso afirmativo e False caso contrário, por exemplo: -}
ehTriangulo a b c = if (a < b + c) && (b < a + c) && (c < a + b) 
                    then 
                        True 
                    else 
                        False

{- 2. Declare uma função que receba 3 medidas válidas dos lados de um triângulo e retorne se esse triângulo é equilátero, isósceles ou escaleno. O retorno deve ser uma String contendo a classificação do triângulo, por exemplo: -}
tipoTriangulo a b c = if (a==b) && (b==c)  
                        then "equilatero" 
                        else if (a/=b) && (a/=c) && (b/=c) 
                            then "escaleno" 
                        else "isosceles"   

{- 3. Declare uma função que receba as 3 medidas dos lados de um triângulo e retorne se essas medidas formam um triângulo, em caso afirmativo a função deve retornar o tipo do triângulo: equilátero, isósceles ou escaleno, caso contrário deve retornar a string: “não eh um triangulo”, use as funções declaradas anteriormente. -}
triangulo a b c = if ehTriangulo a b c 
                    then 
                        tipoTriangulo a b c 
                  else 
                    "nao eh um triangulo"

{- 4. Declare uma função que receba como parâmetro um inteiro n e retorne a soma dos números pares entre 0 e n. -}
somaPares n = somaPares' n 0
somaPares' 0 x = x
somaPares' x y = if mod x 2 == 0 
                then 
                    somaPares' (x-1) (y+x) 
                else 
                    somaPares' (x-1) (y+0)

{- 5. Declare uma função que receba inteiros (m e n) e retorne a seguinte série: 20m + 21m + 22m+ ... + 2nm. -}
somaPot2m m n = somaPot2m' m n 0
somaPot2m' m 0 x = m + x
somaPot2m' m n x = somaPot2m' m (n-1) x+(2^n*m) 

{- 6. Declare uma função que receba um número e retorne True caso o número seja primo e False caso contrário. Um número primo é um número natural maior que 1, e que possui apenas dois divisores: 1 e ele mesmo. -}
primo n | n == 1 = False
        | otherwise = primo' n == n

primo' n = primo'' n 2
primo'' n x     | divide n x = x
                | x^2 > n = n
                | otherwise = primo'' n (x+1)
divide n d = mod n d == 0

{- 7. Uma aproximação para o valor de π pode ser obtida por meio da série:
        4/1 – 4/3 + 4/5 – 4/7 + 4/9 – 4/11 + ...
Declare uma função chamada seriePI que receba como parâmetro um inteiro n e calcule o valor da serie enquanto o termo for maior que 4/n. -}
seriePI 0 = 0
seriePI n = if mod n 2 == 0 then
               -1 * 4 / (2 * (fromIntegral n) - 1) + seriePI(n-1)
            else
                4 / (2 * (fromIntegral n) - 1) + seriePI(n-1)


