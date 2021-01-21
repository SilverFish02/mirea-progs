function abc!(r)
    k = 0
    s = 0 
    A = 0
    while (isborder(r,Nord) && isborder(r,West))==false
        while !isborder(r , Nord)
            move!(r, Nord)
        end
        while !isborder(r, West)
            move!(r,West)
        end
    end
    while !isborder(r,Ost)
        move!(r, Ost)
        s = s + 1
    end
    while !isborder(r,West)
        move!(r, West)
    end
    A = s
    while (isborder(r,Sud) && isborder(r,Ost))==false
        while s > 0
            while !isborder(r, Ost)
                move!(r, Ost)
                s = s - 1
            end
            k = k + 1
            r = 0
            while (isborder(r, Ost) && !isborder(r,Nord))==true
                move!(r,Nord)
                r = r + 1
            end
            if !isborder(r,Ost)
                move!(r,Ost)
                s = s - 1
                if isborder(r, Sud)
                    k = k + 1
                end
                while isborder(r,Sud)
                    move!(r,Ost)
                    s = s - 1
                end
            end
            while r > 0
                move!(r, Sud)
                r = r - 1
            end
        end
        s = A
        if !isborder(r, Sud)
            move!(r,Sud)
            while s > 0
                while !isborder(r,West)
                    move!(r, West)
                    s = s - 1
                end
                k = k + 1
                l = 0
                while (isborder(r, West) && !isborder(r,Nord))==true
                    move!(r, Nord)
                    l = l + 1
                end
                if !isborder(r,West)
                    move!(r,West)
                    s = s - 1
                    if isborder(r, Sud)
                        k = k + 1
                    end
                    while isborder(r,Sud)
                        move!(r,West)
                        s = s - 1
                    end
                end
                while l > 0
                    move!(r, Sud)
                    l = l - 1
                end
            end
        end
        if !isborder(r, Sud)
            move!(r,Sud)
        end
    end
    println(k)
end