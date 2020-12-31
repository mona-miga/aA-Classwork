require_relative "00_tree_node"

class KnightPathFinder
  attr_reader :star_pos

  POSSIBLE_MOVES =[
    [ 2, 1 ],
    [ 1, 2 ],
    [-2,-1 ],
    [-1,-2 ],
    [ 2,-1 ],
    [ -1,2 ],
    [ -2,1 ],
    [ 1,-2 ]
    ]


  def initialize(start_pos)
    @start_pos = start_pos #[0,0]
    @considered_positions = [start_pos]
    @root_node = PolyTreeNode.new(start_pos)

    # children?
   # end_pos 
    # find_path = children?

  # when we find a path -> child 
  #   while finding path -> considered_positions
  #     shortest path = child smallest length 
  # child will be node 


  #   0, 0
  #   3 , 3 = 4 possible moves 
  end

  def self.valid_moves(pos)
    pos = (start_x, start_y)
    POSSIBLE_MOVES.each do |(x, y)|
      possible_x = start_x + x
      possible_y = start_y + y
      considered << [possible_x, possible_y] if (possible_x >= 0 && possible_x <= 7) && (possible_y >= 0 && possible_y <= 7)
  end


  def new_move_positions(pos) 

    # 
  end



  def build_move_tree
    # self.root_node = PolyTreeNode.new(start_pos)
    # use new_move_positions method
    # use BFS method to build tree/queue 
    #root node = start_pos 
  end



  def find_path

  end



end