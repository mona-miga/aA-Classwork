def my_min(arr) #time complexity: O(n**2)
    #min = 0
    arr.each_with_index do |num, idx| #[-5]
        min = num
        arr.each_with_index do |num2, idx2|
            if idx < idx2 && num2 < num 
                min = num2
            end
        end
        return min if min == num
    end
    #min
end

def my_min2(arr) #time complexity: O(n)
    min = arr[0]
    arr.each do |num|
        min = num if num < min
    end
    min
end


#p my_min2([ 0, 3, 5, 4, -5, 10, 1, 90 ])

def sub_sum(arr)
    sums = []
    arr.each do |sub_a|
        
    end

end