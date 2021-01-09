function mark_cross!(r::Robot)
    a=0
    b=0
    while !isborder(r, Nord)
        move!(r, Nord)
        a = a + 1
    end
    while !isborder(r, Sud)
        putmarker!(r)
        move!(r, Sud)
        b = b + 1
    end
    putmarker!(r)
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
    while !isborder(r, Ost)
        putmarker!(r)
        move!(r, Ost)
        b = b + 1
    end
    putmarker!(r)
    b = b - a
    while b > 0 
        move!(r, West)
        b = b - 1
    end
end