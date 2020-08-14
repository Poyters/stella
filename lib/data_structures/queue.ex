defmodule Queue do
  @moduledoc """
  Documentation for `Queue` data structure
  """

  @doc """
  Create new, empty qeue

  ## Examples

      iex> Queue.new()
      []
      
  """

  def new, do: []

  @doc """
  Check if queue is empty

  ## Examples

      iex> Queue.is_empty([])
      :true
      
  """

  def is_empty(queue) do
    if length(queue) == 0, do: :true, else: :false
  end

  @doc """
  Add element to queue

  ## Examples

      iex> Queue.enqueue([1], 2)
      [1, 2]
      
  """

  def enqueue(queue, element) when is_list(element) do
    Enum.concat(queue, element)
  end

  def enqueue(queue, element) do
    Enum.concat(queue, [element])
  end

  @doc """
  Delete element from queue

  ## Examples

      iex> Queue.dequeue([1])
      []

      iex> Queue.dequeue([])
      []     
      
      iex> Queue.dequeue([1, 2, 3])
      [2, 3]
      
  """

  def dequeue(queue) when length(queue) <= 1, do: []

  def dequeue([_head | tail]), do: tail
end