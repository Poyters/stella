defmodule Heap do
  @moduledoc """
  Documentation for `Heap` algorithm
  """

  @doc """
  Create new, empty Heap

  ## Examples

      iex> Heap.new()
      []
      
  """

  def new, do: []

  @doc """
  Return parent index

  ## Examples

      iex> Heap.parent(2)
      1

      iex> Heap.parent(5)
      2
      
  """

  def parent(i), do: Integer.floor_div(i, 2)

  @doc """
  Return left element of index

  ## Examples

      iex> Heap.left(2)
      4
      
  """

  def left(i), do: 2 * i

  @doc """
  Return right element of index

  ## Examples

      iex> Heap.right(2)
      5
      
  """

  def right(i), do: 2 * i + 1

end