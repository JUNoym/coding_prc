# @param {Integer[][]} graph
# @return {Boolean}
graph = [[1,2,3],[0,2],[0,1,3],[0,2]]
def is_bipartite(graph)
    n = graph.length
    colors = Array.new(n, 0)

    n.times do |i|
      if colors[i] == 0
        return false unless dfs(graph, colors, i, 1)
      end
    end

    true
  end

  def dfs(graph, colors, node, color)
    return colors[node] == color unless colors[node].zero?

    colors[node] = color

    graph[node].each do |neighbor|
      return false unless dfs(graph, colors, neighbor, -color)
    end

    true
  end

print(is_bipartite(graph))