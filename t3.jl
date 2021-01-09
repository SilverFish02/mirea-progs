function mark_cross!(r::Robot)
    a = 0
    b = 0
    k = 0
    A = 0
    B = 0
    while !isborder(r, Nord)
        move!(r, Nord)
        A = A + 1
    end
    while !isborder(r, Sud)
        move!(r, Sud)
        a = a + 1
    end
    A = a - A
    while !isbrder(r, West)
        move!(r, West)
        B = B + 1
    end
    while !isborder(r, Ost)
        move!(r, Ost)
        b = b + 1
    end
    B = b - B
    putmarker!(r)
    k = a
    while b > 0
        while a > 0
            move!(r, Nord)
            a = a - 1
            putmarker!(r)
        end
        move!(r, West)
        putmarker!(r)
        a = k
        b = b - 1
        if (b = 0)
            break
        end
        while a > 0
            move!(r, Sud)
            putmarker!(r)
            a = a - 1
        end
        move!(r, Sud)
        putmarker!(r)
        a = k
        b = b - 1
    end
    while !isborder(r, Sud)
        move!(r, Sud)
    end
    while !isborder(r, Ost)
        move!(r, Ost)
    end
    while A > 0
        move!(r, Nord)
        A = A - 1
    end
    while B > 0
        move!(r, West)
        B = B - 1
    end
end

        
