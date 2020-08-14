defmodule Heapsort do
  @moduledoc """
  Documentation for `Heapsort` algorithm
  """

  @doc """
  Create new, empty Heapsort

  ## Examples

      iex> Heapsort.new()
      []
      
  """

  def new, do: []

  @doc """
  Return parent index

  ## Examples

      iex> Heapsort.parent(2)
      1

      iex> Heapsort.parent(5)
      2
      
  """

  def parent(i), do: Integer.floor_div(i, 2)

  @doc """
  Return left element of index

  ## Examples

      iex> Heapsort.left(2)
      4
      
  """

  def left(i), do: 2 * i

  @doc """
  Return right element of index

  ## Examples

      iex> Heapsort.right(2)
      5
      
  """

  def right(i), do: 2 * i + 1

end