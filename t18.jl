function mark_cross!(r::Robot)
    a = 0
    b = 0
    while (isborder(r,Nord) && isborder(r,West))==false
        while !isborder(r , Nord)
            move!(r, Nord)
            a = a + 1
        end
        while !isborder(r, West)
            move!(r,West)
            b = b + 1
        end
    end
    putmarker!(r)
    while !isborder(r, Ost)
        move!(r, Ost)
    end
    putmarker!(r)
    while !isborder(r, Sud)
        move!(r, Sud)
    end
    putmarker!(r)
    while !isborder(r, West)
        move!(r, West)
    end
    putmarker!(r)
    while !isborder(r, Nord)
        move!(r, Nord)
    end
    while b > 0
        move!(r, Ost)
        b = b - 1
    end
    while a > 0
        if isborder(r,Sud)
            s = 0
            while isborder(r, Sud)
                move!(r, West)
                s = s + 1
            end
            move!(r, Sud)
            a = a - 1
            while isborder(r, Ost)
                move!(r, Sud)
                a = a - 1
            end
            while s > 0
                move!(r, Ost)
                s = s - 1
            end
        else
            move!(r, Sud)
            a = a - 1
    end
end