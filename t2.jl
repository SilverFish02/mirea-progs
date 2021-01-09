function mark_cross!(r::Robot)
    while !isborder(r, Nord)
        move!(r, Nord)
    end
    while !isborder(r, Ost)
        move!(r, Ost)
    end
    while !isborder(r, Sud)
        move!(r, Sud)
        putmarket!(r)
    end
    while !isborder(r, West)
        move!(r, West)
        putmarker!(r)
    end
    while !isborder(r, Nord)
        move!(r, Nord)
        putmarker!(r)
    end
    while !isborder(r, West)
        move!(r, West)
        putmarker!(r)
    end
end



