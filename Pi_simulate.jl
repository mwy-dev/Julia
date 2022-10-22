using Plots

#Symylacja liczby π dla 100k iteracji

let N = 100000; 
let P = 0
w=zeros(0)
    for i = 1:N
        x = rand()
        y = rand()
        r2 = x*x + y*y
        if r2 < 1
            P=P+1
        end
        push!(w,(4*P/i))
    end
    return 4*P/N,
display(scatter(1:N,w,
    title = "Iteracje"))
end
end
