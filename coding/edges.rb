n = 6
edges = [[0,1],[0,2],[2,5],[3,4],[4,2]]

def find_smallest_set_of_vertices(n, edges)
    vertices = Array.new(n, true)
    edges.each do |from, to|
        vertices[to] = false
    end
    result = []
    vertices.each_with_index do |vertex, index|
        result << index if vertex
    end
    result
end


find_smallest_set_of_vertices(n, edges)