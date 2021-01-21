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
    while ismarker(r)
        while !isborder(r, Ost)
            if ismarker(r)
                break
            end
            if isborder(r, Ost)
                right!(r)
            else
                move!(r, Ost)
            end
        end
        if ismarker(r)
            break
        end
        move!(r, Sud)
        while !isborder(r, West)
            if ismarker(r)
                break
            end
            if isborder(r, West)
                left!(r)
            else
                move!(r, West)
            end
        end
        if ismarker(r)
            break
        end
        move!(r, Sud)
    end
end