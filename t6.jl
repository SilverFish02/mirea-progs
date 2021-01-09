function mark_kross(r::Robot)
    a = 0
    b = 0
    A = 0
    B = 0
    k = 0
    i = o
    knA = 0
    knB = 0
    verh = 0
    niz = 0
    while !isborder(r, Nord)
        move!(r, Nord)
        a = a + 1
    end
    while !isborder(r, West)
        move!(r, West)
        b = b + 1
        while !isborder(r, Nord)
            move!(r, Nord)
            a = a + 1
        end
    end
    while !isborder(r, Sud)
        move!(r, Sud)
        A = A + 1
    end
    knA = A
    while !isborder(r, Ost)
        move!(r, Ost)
        B = B + 1
    end
    knB = B
    while B > 0
        while A > 0
            if isborder(r, Nord)==true
                break
            end
            move!(r, Nord)
        end
        if isborder(r, Nord)==true
            if (A > 0)
                niz = 1
                break
            end
        end
        A = knA
        move!(r, West)
        B = B - 1
        while A > 0
            if isborder(r, Sud)==true
                break
            end
            move!(r, Sud)
        end
        if isborder(r, Sud)==true
            if (B > 0)
                verh = 1
                break
            end
        end
        A = knA
        move!(r, West)
        B = B - 1
    end
    if (verh = 1)
        while isborder(r, Sud)==true
            move!(r, West)
        end
        move!(r, Sud)
        putmarker!(r)
        while isborder(r, Ost)==true
            move!(r, Sud)
            putmarker(r)
        end
        move!(r, Ost)
        putmarker!(r)
        while isborder(r, Nord)==true
            move!(r, Ost)
            putmarker!(r)
        end
        move!(r, Nord)
        putmarker!(r)
        while isborder(r, West)==true
            move!(r, Nord)
            putmarker(r)
        end
        move!(r, West)
        putmarker!(r)
        while isborder(r, Sud)==true
            move!(r, West)
            putmarker!(r)
        end
    end
    if (niz = 1)
        while isborder(r, Nord)==true
            move!(r, West)
        end
        move!(r, Nord)
        putmarker!(r)
        while isborder(r, Ost)==true
            move!(r, Nord)
            putmarker(r)
        end
        move!(r, Ost)
        putmarker!(r)
        while isborder(r, Sud)==true
            move!(r, Ost)
            putmarker!(r)
        end
        move!(r, Sud)
        putmarker!(r)
        while isborder(r, West)==true
            move!(r, Sud)
            putmarker(r)
        end
        move!(r, West)
        putmarker!(r)
        while isborder(r, Nord)==true
            move!(r, West)
            putmarker!(r)
        end
    end
    while !isborder(r, Nord)
        move!(r, Nord)
    end
    while !isborder(r, West)
        move!(r, West)
    end
    while a > 0
        move!(r, Sud)
        a = a -1
    end
    while b > 0
        while isborder(r, Nord)==true
            move!(r, Nord)
            a = a + 1
        end
        move!(r, Ost)
        b = b - 1
    end
    while a > 0
        move!(r, Sud)
        a = a - 1
    end
end
