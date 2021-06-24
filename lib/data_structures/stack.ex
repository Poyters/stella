defmodule Stack do
  @moduledoc """
  Documentation for `Stack` data structure
  """

  @doc """
  Creates new, empty stack

  ## Examples

      iex> Stack.new()
      []

      iex> Stack.new() |> Stack.push([1, 2, 3])
      [1, 2, 3]

      iex> Stack.new() |> Stack.push([1, 2, 3, 4]) |> Stack.pop()
      [1, 2, 3]

  """
  @spec new :: []
  def new, do: []

  @doc """
  Checks if stack is empty

  ## Examples

      iex> Stack.is_empty([])
      true

      iex> Stack.is_empty(["5", 3, 4])
      false

  """
  @spec is_empty(list) :: boolean
  def is_empty(stack) do
    if length(stack) == 0, do: true, else: false
  end


  @doc """
  Adds a new element to the top of the stack

  ## Examples

      iex> Stack.push([], 1)
      [1]

      iex> Stack.push([1, 2], 3)
      [1, 2, 3]

      iex> Stack.push([1, 2, :xxx], [3, 4, 0.001, 5, "5"])
      [1, 2, :xxx, 3, 4, 0.001, 5, "5"]

  """
  @spec push(list, list) :: list
  def push(stack, element) when is_list(element) do
    Enum.concat(stack, element)
  end

  def push(stack, element) do
    Enum.concat(stack, [element])
  end

  @doc """
  Deletes the top element of the stack

  ## Examples

      iex> Stack.pop([])
      []

      iex> Stack.pop([1])
      []

  """
  @spec pop(list) :: list
  def pop(stack) when length(stack) <= 1, do: []

  def pop(stack), do: Enum.drop stack, -1

end
