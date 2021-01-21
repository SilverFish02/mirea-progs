function abc_West!(r)
    w=0
    while (!isborder(r,Nord) && isborder(r, West))
        move!(r, Nord)
        w = w + 1
    end
    if (!isborder(r, West))
        move!(r, West)
        while isborder(r, Sud)
            move!(r, West)
        end
    end
    while w > 0
        move!(r, Sud)
        w = w - 1
    end
end
function abc_Nord!(r)
    n=0
    while (!isborder(r,Ost) && isborder(r, Nord))
        move!(r, Ost)
        n = n + 1
    end
    if (!isborder(r, Nord))
        move!(r, Nord)
        while isborder(r, West)
            move!(r, Nord)
        end
    end
    while n > 0
        move!(r, West)
        n = n - 1
    end
end
function abc_Ost!(r)
    o=0
    while (!isborder(r,Sud) && isborder(r, Ost))
        move!(r, Sud)
        o = o + 1
    end
    if (!isborder(r, Ost))
        move!(r, Ost)
        while isborder(r, Nord)
            move!(r, Ost)
        end
    end
    while o > 0
        move!(r, Nord)
        o = o - 1
    end
end
function abc_Sud!(r)
    s=0
    while (!isborder(r,West) && isborder(r, Sud))
        move!(r, West)
        s = s + 1
    end
    if (!isborder(r, Sud))
        move!(r, Sud)
        while isborder(r, Ost)
            move!(r, Sud)
        end
    end
    while s > 0
        move!(r, Ost)
        s = s - 1
    end
end
function mark_cross!(r::Robot)
    a=0
    b=0
    while !isborder(r, Nord)
        move!(r, Nord)
        a = a + 1
    end
    abc_Nord!(r)
    if (isborder(r, Sud))
        putmarker!(r)
        while !isborder(r, Nord)
            move!(r, Nord)
            putmarker!(r)
        end
        while !isborder(r,Sud)
            move!(r,Sud)
        end
        abc_Sud!(r)
    end
    while !isborder(r, Sud)
        putmarker!(r)
        move!(r, Sud)
        b = b + 1
    end
    putmarker!(r)
    abc_Sud!(r)
    if isborder(r, Nord)
        putmarker!(r)
        while !isborder(r, Sud)
            move!(r, Sud)
            putmarker!(r)
        end
        while !isborder(r, Nord)
            move!(r, Nord)
        end
        abc_Nord!(r)
    end
    b = b - a
    while b > 0
        move!(r, Nord)
        b = b - 1
    end
    a = 0
    b = 0
    while !isborder(r, West)
        move!(r, West)
        a = a + 1
    end
    abc_West!
    if isborder(r,Ost)
        putmarker!(r)
        while !isborder(r,West)
            move!(r,West)
            putmarker!(r)
        end
        while !isborder(r, Ost)
            move!(r, Ost)
        end
        abc_Ost!(r)
    end
    while !isborder(r, Ost)
        putmarker!(r)
        move!(r, Ost)
        b = b + 1
    end
    putmarker!(r)
    abc_Ost!(r)
    if isborder(r,West)
        putmarker!(r)
        while !isborder(r, Ost)
            move!(r, Ost)
            putmarker!(r)
        end
        while !isborder(r, West)
            move!(r, West)
        end
        abc_West!(r)
    end
    b = b - a
    while b > 0 
        move!(r, West)
        b = b - 1
    end
end