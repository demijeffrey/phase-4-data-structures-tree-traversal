class Tree

  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(id)
    nodes_to_visit = [@root]
    until nodes_to_visit.empty?
      node = nodes_to_visit.pop
      return node if node[:id] == id
      nodes_to_visit = nodes_to_visit + node[:children]
    end
    nil
  end

end