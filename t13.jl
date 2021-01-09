function main!(r)
    while (!isborder(r, Nord) && !isborder(r, West))==true
        move!(r, Nord)
        move!(r, West)
        putmarker!(r)
    end
    while ismarker(r)
        move!(r,Ost)
        move!(r,Sud)
    end
    while (!isborder(r, Sud) && !isborder(r, West))==true
        move!(r, Sud)
        move!(r, West)
        putmarker!(r)
    end
    while ismarker(r)
        move!(r,Ost)
        move!(r,Nord)
    end
    while (!isborder(r, Nord) && !isborder(r, Ost))==true
        move!(r, Nord)
        move!(r, Ost)
        putmarker!(r)
    end
    while ismarker(r)
        move!(r,West)
        move!(r,Sud)
    end
    while (!isborder(r, Sud) && !isborder(r, Ost))==true
        move!(r, Sud)
        move!(r, Ost)
        putmarker!(r)
    end
    while ismarker(r)
        move!(r,Nord)
        move!(r,West)
    end
    putmarker!(r)
end