### Pedro Cavalcante
### pc_oliveira@id.uff.br

### Implementação da Função de Weierstrass
### Tópicos Especiais de Métodos Estatísticos


function weierstrass(x, a = 0.5, b = 7, eps = 9^(-5), n = 10000)

    if a*b <= (1 + 3*pi/2)
        print("a*b must be greater than 1 + 3*pi/2")
    end

    if a < 0 | a > 1 
        print("a must be a positive number smaller than 1")
    end

    if isodd(b) == FALSE
        print("b must be an odd number")
    end

    soma[1] = 0

    for i = 2:n
        if a^n * cos(b^n * pi * x) > eps
            soma[i] = a^n * cos(b^n * pi * x) 
        end
    end

    return sum(soma)

end


