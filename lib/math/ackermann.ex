defmodule Ackermann do
  @moduledoc """
  Ackermann function is one of the simplest example of a total computable function that is not primitive recursive.
  """

  @doc """
  Run Ackermann function for given initials
  More info on [Wikipedia](https://en.wikipedia.org/wiki/Ackermann_function) page

  ## Examples

      iex> Ackermann.ack(0, 1)
      2

      iex> Ackermann.ack(3, 6)
      509

  """
  @spec ack(non_neg_integer, number) :: number
  def ack(0, n), do: n + 1
  def ack(m, 0), do: ack(m - 1, 1)
  def ack(m, n), do: ack(m - 1, ack(m, n - 1))
end
