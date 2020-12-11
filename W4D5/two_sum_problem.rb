# Brute force : O(n^2)
# Sorting: 0(n) - bsearch <=> 
# Hash map: 0(n)

def brute_force(arr, target)
  arr.each_with_index do |num, i|
    arr.each_with_index do |num2, i2|
      return true if num + num2 == target && i < i2
    end
  end
  false
end

# arr = [0, 1, 5, 7]
# p brute_force(arr, 6) # => should be true
# p brute_force(arr, 10) # => should be false

def sorting(arr, target)
  i = 0
  j = arr.length-1

  while i < j
    sum = arr[i] + arr[j]
    case sum <=> target
      when 0
        return true
      when -1
        i += 1
      when 1
        j -=1
    end
  end
  false
end

arr = [0, 1, 5, 7]
p sorting(arr, 6) # => should be true
p sorting(arr, 10) # => should be false