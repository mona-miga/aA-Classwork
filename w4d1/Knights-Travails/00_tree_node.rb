class PolyTreeNode

  attr_reader :value, :parent, :children

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(node)
    return if self.parent == node

    if node.nil?
      if self.parent != nil
        self.parent.children.delete(self)
      end
     @parent = nil
      return
    end

    if self.parent != nil
      self.parent.children.delete(self)
    end
    @parent = node
    # self.parent.children << self
    self.parent.add_child(self)
  end

  def add_child(child)
    children << child if !children.include?(child)
    child.parent = self
  end

  def remove_child(child)
    raise "#{self} is not a child of #{self.parent}" if !children.include?(child)
    child.parent = nil
  end

  def dfs(target)
    return self if self.value == target
    return nil if self.nil?
    
    self.children.each do |child|
      search = child.dfs(target)
      return search unless search.nil?
    end
    nil
  end
  

  def bfs(target)
    queue = [self]

    while !queue.empty?
      first = queue.shift
      if first.value == target
        return first
      else
        queue += first.children
      end
    end
    return nil
  end

end


# parent = PolyTreeNode.new
# child = PolyTreeNode.new
# child.parent = parent

# parent.add_child(child)