
function reduce( max, init, f )
    local result = init
    for i=init,max do
        result = f(result, i)
    end
    return result
end

function add( previous, next )
    return previous + next 
end

print(reduce(5, 0, add))

function factorial( n)
    return reduce(n, 1, function ( a, b )
        return a * b
    end)
end

print(factorial(4))