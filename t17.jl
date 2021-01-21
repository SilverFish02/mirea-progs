function mark_corss!(r::Robot)
    a = 0
    b = 0
    k = 0
    s = 0
    while (isborder(r,Sud) && isborder(r,West))==false
        while !isborder(r, Sud)
            move!(r, Sud)
            a = a + 1
        end
        while !isborder(r, West)
            move!(r, West)
            b = b + 1
        end
    end
    putmarker!(r)
    while !isborder(r, Ost)
        move!(r, Ost)
        k = k + 1
        putmarker!(r)
    end
    s = k
    while s > 0
        move!(r, West)
        s = s - 1
    end
    k = k - 1
    while ((k > 0) && !isborder(r,Nord))==true
        move!(r,Nord)
        s = k
        putmarker!(r)
        while s > 0
            if isborder(r, Ost)
                r = 0
                while (isborder(r, Ost) && !isborder(r,Nord))==true
                    move!(r,Nord)
                    r = r + 1
                end
                if !isborder(r,Ost)
                    move!(r,Ost)
                    s = s - 1
                    while isborder(r,Sud)
                        move!(r,Ost)
                        s = s - 1
                    end
                end
                while r > 0
                    move!(r, Sud)
                    r = r - 1
                end
                putmarker!(r)
            else
                move!(r, Ost)
                putmarker!(r)
                s = s - 1
            end
        end
        s = k
        while s > 0
            if isborder(r, West)
                l = 0
                while (isborder(r, West) && !isborder(r,Nord))==true
                    move!(r, Nord)
                    l = l + 1
                end
                if !isborder(r,West)
                    move!(r,West)
                    s = s - 1
                    while isborder(r,Sud)
                        move!(r,West)
                        s = s - 1
                    end
                end
                while l > 0
                    move!(r, Sud)
                    l = l - 1
                end
            else
                move!(r,West)
                s = s - 1
            end
        end
        k = k - 1
    end
    while !isborder(r, Sud)
        move!(r , Sud)
    end
    while b > 0
        move!(r, Ost)
        b = b - 1
    end
    while a > 0
        if isborder(r, Nord)
            n = 0
            while isborder(r, Nord)
                move!(r,West)
                n = n + 1
            end
            move!(r, Nord)
            a = a - 1 
            while isborder(r, Ost)
                move!(r, Nord)
                a = a - 1
            end
            while n > 0
                move!(r, Ost)
            end
        else
            move!(r, Nord)
            a = a - 1
        end
    end
end