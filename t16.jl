function right!(r)
    r = 0
    while (isborder(r, Ost) && !isborder(r,Nord))==true
        move!(r,Nord)
        r = r + 1
    end
    if !isborder(r,Ost)
        move!(r,Ost)
        while isborder(r,Sud)
            move!(r,Ost)
        end
    end
    while r > 0
        move!(r, Sud)
        r = r - 1
    end
end
function left!(r)
    l = 0
    while (isborder(r, West) && !isborder(r,Nord))==true
        move!(r, Nord)
        l = l + 1
    end
    if !isborder(r,West)
        move!(r,West)
        while isborder(r,Sud)
            move!(r,West)
        end
    end
    while l > 0
        move!(r, Sud)
        l = l - 1
    end
end
function mark_corss!(r::Robot)
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
    while (isborder(r,Sud) && isborder(r,Ost))==false
        if isborder(r,West)
            while !isborder(r, Ost)
                move!(r,Ost)
                putmarker!(r)
            end
            right!(r)
            if isborder(r, Ost)
                if !isborder(r, Sud)
                    move!(r, Sud)
                end
            end
        end
        if isborder(r,Ost)
            while !isborder(r, West)
                move!(r,West)
                putmarker!(r)
            end
            left!(r)
            if isborder(r, West)
                if !isborder(r, Sud)
                    move!(r, Sud)
                end
            end
        end
    end
    while !isborder(r,Nord)
        move!(r, Nord)
    end
    while !isborder(r,West)
        move!(r, West)
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