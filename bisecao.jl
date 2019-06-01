function leitor(P)

end

function geraP1(P)
    n = length(P)
    saida = zeros(n)
    for i = 1:n
        saida[j] = P[n - j + 1]
    end
    return saida
end

function geraP2(P)
    n = length(P)
    saida = zeros(n)
    for i = 1:n
        saida[j] = P[n - j + 1]
    end
    return saida

end



function Lagrange(n, k, B, an)
    return 1.0 + (B/an)^(1.0/(n - k))
end

function encontrarK(P)
    n = length(P)
    j = 1
    k = 0
    acabou = false
    while ~acabou
        if P[j] < 0
            k = n - j
            acabou = true
        else
            k = 0
        end

        j = j + 1

        if j > n
            acabou  = true
        end

    end
    return k
end


function acharB(P)

    b = minimum(P)

    if b > 0
        b = 0
    else
        b = -b
    end
end



function Limite(P)
    n = length(P) - 1
    a = P[1]
    k = encontrarK(P)
    B = acharB(P)
    return Lagrange(n, k, B, a)
end

function final(P)
    L = Limite(P)
    L1 = 1.0/Limite(gerarP1(P))
    L2 = Limite(gerarP2(P))
    L3 = -1.0/Limite(geraP2(P1))
    return L2, L3, L1, L
end
