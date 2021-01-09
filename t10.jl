function main!(r::Robot)
    t = 0
    k = 0
    a = 0
    while !isborder(r,Ost)
        while !isborder(r, Nord)
            move!(r,Nord)
            if ismarker(r)
                k = k + 1
                t = t + temperature(r)
            end
        end
        goback!(r)
        move!(r, Ost)
        if ismarker(r)
            k = k + 1
            t = t + temperature(r)
        end
    end
    while !isborder(r, Nord)
        move!(r, Nord)
        if ismarker(r)
            k = k + 1
            t = t + temperature(r)
        end
    end
    if k > 0
        a = t/k
        println(a)
    end
end