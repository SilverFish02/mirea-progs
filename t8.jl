function main!(r::Robot)
    k = 5
    while isborder(r, Nord)
        K = k
        while K > 0
            move!(r, Ost)
            K = K - 1
            if !isborder(r,Nord)
                break
            end
        end
        if !isborder(r,Nord)
            break
        end
        K = k
        while K > 0
            move!(r,West)
            K = K - 1
        end
        K = k
        while K > 0
            move!(r,West)
            if !isborder(r,Nord)
                break
            end
            K = K - 1
        end
        if !isborder(r,Nord)
            break
        end
        K = k
        while K > 0
            move!(r,Ost)
            K = K - 1
        end
        k = k + 5
    end
end