defmodule Stack do
  @moduledoc """
  Documentation for `Stack` data structure
  """

  @doc """
  Create new, empty stack

  ## Examples

      iex> Stack.new()
      []

      iex> Stack.new() |> Stack.push([1, 2, 3])
      [1, 2, 3]

      iex> Stack.new() |> Stack.push([1, 2, 3, 4]) |> Stack.pop()
      [1, 2, 3]
      
  """

  def new, do: []

  @doc """
  Check if stack is empty

  ## Examples

      iex> Stack.is_empty([])
      true
      
  """

  def is_empty(stack) do
    if length(stack) == 0, do: true, else: false
  end


  @doc """
  Add new element on the top of stack

  ## Examples

      iex> Stack.push([], 1)
      [1]

      iex> Stack.push([1, 2], 3)
      [1, 2, 3]

      iex> Stack.push([1, 2], [3, 4, 5])
      [1, 2, 3, 4, 5]
      
  """

  def push(stack, element) when is_list(element) do
    Enum.concat(stack, element)
  end

  def push(stack, element) do
    Enum.concat(stack, [element])
  end

  @doc """
  Delete top element of stack

  ## Examples

      iex> Stack.pop([])
      []

      iex> Stack.pop([1])
      []
      
  """

  def pop(stack) when length(stack) <= 1, do: []

  def pop(stack), do: Enum.drop stack, -1 

end