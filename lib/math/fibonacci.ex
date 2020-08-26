defmodule Fibonacci do
  @moduledoc """
  Documentation for `Fibonacci sequence`.
  """

  @doc """
  Returns result of Fibonacci Sequence

  ## Examples

      iex> Fibonacci.sequence(1)
      1

      iex> Fibonacci.sequence(10)
      55
      
  """

  def sequence(0), do: 0
  def sequence(1), do: 1
  def sequence(n), do: sequence(n-1) + sequence(n-2)  
end
