def my_unique(arr)
  new_arr = []
  arr.each do |el|
    if !new_arr.include?(el)
      new_arr << el
    end
  end
  new_arr
end

def two_sum(arr)
  new_arr = []
  arr.each_with_index do |el1, idx1|
    arr.each_with_index do |el2, idx2|
      if idx1 < idx2 && el1 + el2 == 0
        new_arr << [idx1, idx2]
      end
    end
  end
  new_arr
end

