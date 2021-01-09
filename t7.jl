function putmarkers!(r)
    move!(r, Ost)
    if !isborder(r, Ost)
        move!(r, Ost)
        putmarker!(r)
    end
end
function goback!(r)
    while !isborder(r, West)
        move!(r, West)
    end
end
function main!(r::Robot)
    putmarker!(r)
    a = 0
    b = 0
    k = 0
    while !isborder(r, West)
        move!(r, West)
        a = a + 1
        if !isborder(r, West)
            move!(r, West)
            putmarker!(r)
            a = a + 1
        end
    end
    if !ismarker(r)
        if !isborder(r, Sud)
            move!(r, Sud)
            k = k + 1
            putmarker!(r)
        end
    end
    while !isborder(r,Sud)
        move!(r, Sud)
        k = k + 1
        if !isborder(r, Sud)
            move!(r, Sud)
            k = k + 1
            putmarker!(r)
        end
    end
    while k > 0
        move!(r, Nord)
        k = k - 1
    end
    if !ismarker(r)
        if !isborder(r, Nord)
            move!(r, Nord)
            b = b + 1
            putmarker!(r)
        end
    end
    while !isborder(r, Nord)
        move!(r, Nord)
        b = b + 1
        if !isborder(r, Nord)
            move!(r, Nord)
            b = b + 1
            putmarker!(r)
        end
    end
    while !isborder(r, Sud)
        if !ismarker(r)
            if !isborder(r, Ost)
                move!(r, Ost)
                putmarker!(r)
            end
        end
        while !isborder(r, Ost)
            putmarkers!(r)
        end
        goback!(r)
        move!(r, Sud)
    end
    if !ismarker(r)
        if !isborder(r, Ost)
            move!(r, Ost)
            putmarker!(r)
        end
    end
    while !isborder(r, Ost)
        putmarkers!(r)
    end
    while !isborder(r, West)
        move!(r, West)
    end
    while !isborder(r,Nord)
        move!(r, Nord)
    end
    while a > 0
        move!(r, Ost)
        a = a - 1
    end
    while b > 0
        move!(r, Sud)
        b = b - 1
    end
end
