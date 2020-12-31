class MaxIntSet
  attr_reader :store

  def initialize(max)
    @store = Array.new(max, false)

  end

  def insert(num)
    raise 'Out of bounds' if num < 0 or num > @store.length
    @store[num] = true
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    @store[num]
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  attr_accessor :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    # @store[num%num_buckets] << num
    self[num] << num
  end

  def remove(num)
    @store[num%num_buckets].delete(num)
    self[num].delete(num)
  end

  def include?(num)
    # @store[num%num_buckets].include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num%num_buckets]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count, :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    # self[num] << num unless @store.include?(num)
    return false if include?(num)
    self[num] << num
    @count += 1
    resize! if count > num_buckets
    return true
  end

  def remove(num)
    if include?(num)
      self[num].delete(num)
      @count -= 1
    end
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num % num_buckets]
  end

  def num_buckets
    @store.length
  end

  def resize!
    if @count > num_buckets 
      new_buckets = num_buckets * 2
      new_store = Array.new(new_buckets) { Array.new }
      @store.each do |el|
        el.each do |sub_el|
          new_store[sub_el % new_buckets] << sub_el
        end
      end
      @store = new_store
    end
  end
end
