defmodule PriorityQueue do
  @moduledoc """
  Documentation for `PriorityQueue` data structure implemented on general balanced trees. 
  These have no storage overhead compared to unbalanced binary trees, and
  their performance is better than AVL trees.
  """

  @doc """
  Create a new, empty qeue

  ## Examples

      iex> PriorityQueue.new()
      {0, nil}
      
  """

  def new, do: :gb_trees.empty

  @doc """
  Add a new element with priority to queue

  ## Examples

      iex> PriorityQueue.new() |> PriorityQueue.insert("Do homework", 4)
      {1, {4, "Do homework", nil, nil}}
      
  """

  def insert(queue, element, priority), do: :gb_trees.enter(priority, element, queue)
end