defmodule PriorityQueue do
  @moduledoc """
  Documentation for `PriorityQueue` data structure implemented on general balanced trees by Arne Andersson
  These have no storage overhead compared to unbalanced binary trees, and
  their performance is better than AVL trees.

  More about GB trees on [Arne Andersson work](http://user.it.uu.se/~hansh/arne1.pdf)
  """

  @doc """
  Create a new, empty qeue

  ## Examples

      iex> PriorityQueue.new
      {0, nil}

  """
  def new, do: :gb_trees.empty

  @doc """
  Check if priority queue is empty

  ## Examples

      iex> PriorityQueue.new |> PriorityQueue.empty?
      true

  """
  def empty?(queue), do: :gb_trees.is_empty(queue)

  @doc """
  Add a new element with priority to queue

  ## Examples

      iex> PriorityQueue.new |> PriorityQueue.insert("Do homework", 4)
      {1, {4, "Do homework", nil, nil}}

  """

  def insert(queue, element, priority), do: :gb_trees.enter(priority, element, queue)

  @doc """
  Remove element from queue with the higest priority

  ## Examples

      iex> PriorityQueue.new |> PriorityQueue.insert("Do homework", 4) |> PriorityQueue.top
      {0, nil}

  """

  def top(queue) do
    {_priority, _element, new_queue} = :gb_trees.take_smallest(queue)
    new_queue
  end

  @doc """
  Return number of elements in queue

  ## Examples

      iex> PriorityQueue.new |> PriorityQueue.insert("Do homework", 4) |> PriorityQueue.size
      1

  """

  def size(queue), do: :gb_trees.size(queue)

  @doc """
  Checkout if queue is empty

  ## Examples

      iex> PriorityQueue.new |> PriorityQueue.insert("Do homework", 4) |> PriorityQueue.is_empty
      false

      iex> PriorityQueue.new |> PriorityQueue.is_empty
      true

  """

  def is_empty(queue), do: if :gb_trees.size(queue) > 0, do: false, else: true

  @doc """
  Checkout if queue is empty

  ## Examples

      iex> PriorityQueue.new
      iex> |> PriorityQueue.insert("Do4", 4)
      iex> |> PriorityQueue.insert("Do1", 1)
      iex> |> PriorityQueue.to_list
      [{1, "Do1"}, {4, "Do4"}]

  """

  def to_list(queue), do: :gb_trees.to_list(queue)

  @doc """
  Return peek element of queue

  ## Examples

      iex> PriorityQueue.new |> PriorityQueue.insert("Do homework", 4) |> PriorityQueue.peek
      "Do homework"

  """

  def peek(queue) do
    {_priority, element, _new_queue} = :gb_trees.take_smallest(queue)
    element
  end

end
