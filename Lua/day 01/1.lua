
-- repeat循环无论循环条件如何都要执行一次

function ends_in_3( num )
    return num % 10 == 3
end

print(ends_in_3(42))
print(ends_in_3(43))
print('---')

function is_prime( num )
    for i = 2,num - 1 do
        if num % i == 0 then
            return false
        end
    end
    return true
end

print(is_prime(12))
print(is_prime(13))
print('---')

function print_n_first_prime_ends_in_3(n, ... )
    local x = 1
    nums = {...}
    for i=1,#nums do
        if x > n then
            return
        end
        if ends_in_3(nums[i]) and is_prime(nums[i]) then
            print(nums[i])
            x = x + 1
        end
    end
end

print_n_first_prime_ends_in_3(2, 3, 4, 33, 53, 73, 63)