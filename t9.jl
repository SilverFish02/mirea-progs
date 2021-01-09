function start!(r)
    move!(r,Nord)
    move!(r,West)
end
function main!(r::Robot)
    k = 0
    while !ismarker(r)
        start!(r)
        k = k + 2
        a = k
        while a > 0
            move!(r, Ost)
            if ismarker(r)
                break
            end
            a = a - 1
        end
        if ismarker(r)
            break
        end
        a = k
        while a > 0
            move!(r,Sud)
            if ismarker(r)
                break
            end
            a = a - 1
        end
        if ismarker(r)
            break
        end
        a = k
        while a > 0
            move!(r, West)
            if ismarker(r)
                break
            end
            a = a - 1
        end
        if ismarker(r)
            break
        end
        a = k
        while a > 0
            move!(r, Nord)
            if ismarker(r)
                break
            end
            a = a - 1
        end
        if ismarker(r)
            break
        end
    end
end
    