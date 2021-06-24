defmodule Fibonacci do
  @moduledoc """
  The Fibonacci polynomials are a polynomial sequence which can be considered as a generalization of the Fibonacci numbers.
  """

  @doc """
  Returns result of Fibonacci Sequence for a given number

  ## Examples

      iex> Fibonacci.sequence(1)
      1

      iex> Fibonacci.sequence(10)
      55

  """
  @spec sequence(non_neg_integer) :: non_neg_integer
  def sequence(0), do: 0
  def sequence(1), do: 1
  def sequence(n), do: sequence(n-1) + sequence(n-2)
end
