function mark_cross!(r::Robot)
    a = 0
    b = 0
    A = 0
    B = 0
    k = 0
    while !isborder(r, Nord)
        move!(r, Nord)
        a = a + 1
    end
    while !isborder(r, Sud)
        A = A + 1
        move!(r, Sud)
    end
    a = A - a
    while !isborder(r, Ost)
        b = b + 1
        move!(r, Ost)
    end
    putmarker!(r)
    while !isborder(r, West)
        B = B + 1
        move!(r, West)
        putmarker!(r)
    end
    b = B - b
    B = B - 1
    k = B
    while A > 0
        if (k = 0)
            break
        end
        move!(r, Nord)
        putmarker!(r)
        while B > 0
            move!(r, Ost)
            putmarker!(r)
        end
        B = k
        while B > 0
            move!(r, West)
            B = B - 1
        end
        k = k - 1 
        B = k
        A = A - 1
    end
end






