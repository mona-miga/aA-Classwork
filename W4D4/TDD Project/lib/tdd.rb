def my_unique(arr)
  new_arr = []
  arr.each do |el|
    if !new_arr.include?(el)
      new_arr << el
    end
  end
  new_arr
end