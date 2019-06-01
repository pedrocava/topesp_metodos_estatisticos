### teste 14

function teste(cpf)
    um = 1
    n = 0
    dez = 10
    onze = dez
    zero = 0
    p = zero
    q = p
    m = q

    while onze >= zero
        base = dez^onze
        m = div(cpf, base)
        if onze >= 6
            p = p + m
            elseif onze == 5
                if m == 0
                    n = p
                else
                    n = m
                end
        else
            q = q + m
        end
     cpf = div(cpf, base)
     onze = onze - um

    end

    p = div(p, n)
    q = div(p, n)
    saida = p - q
    return saida

end

teste(57867564534)

x = range(99999991111, 99999999999)
x = teste.(x)

plot(x)
