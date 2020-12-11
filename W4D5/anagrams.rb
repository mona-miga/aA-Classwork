def first_anagram?(str_1, str_2) # O(n^3)
  anagrams = str_1.split("").permutation.to_a
  anagrams.map! { |word| word.join("") }
  anagrams.include?(str_2)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str_1, str_2)
  target = str_2.split("")
  str_1.each_char.with_index do |char, i|
    idx = target.find_index(char)
    target.delete_at(idx) if idx
  end
  target.empty?  
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true