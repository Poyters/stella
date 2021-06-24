defmodule Queue do
  @moduledoc """
  Documentation for `Queue` data structure
  """

  @doc """
  Creates a new, empty qeue

  ## Examples

      iex> Queue.new()
      []

  """
  @spec new :: []
  def new, do: []

  @doc """
  Checks if queue is empty

  ## Examples

      iex> Queue.is_empty([])
      true

      iex> Queue.is_empty([1, "2", :atom, 5])
      false

  """
  @spec is_empty(list) :: boolean
  def is_empty(queue) do
    if length(queue) == 0, do: true, else: false
  end


  @doc """
  Adds element to queue

  ## Examples

      iex> Queue.enqueue([1], 2)
      [1, 2]

      iex> Queue.enqueue([1], 2)
      [1, 2]

      iex> Queue.enqueue([1, "2", :atom], 5)
      [1, "2", :atom, 5]

  """
  @spec enqueue(list, any) :: list
  def enqueue(queue, element) when is_list(element) do
    Enum.concat(queue, element)
  end

  def enqueue(queue, element) do
    Enum.concat(queue, [element])
  end

  @doc """
  Deletes element from queue

  ## Examples

      iex> Queue.dequeue([1])
      []

      iex> Queue.dequeue([])
      []

      iex> Queue.dequeue([1, 2, 3])
      [2, 3]

      iex> Queue.dequeue([1, "2", :atom])
      ["2", :atom]

  """
  @spec dequeue(list) :: list
  def dequeue(queue) when length(queue) <= 1, do: []

  def dequeue([_head | tail]), do: tail
end
