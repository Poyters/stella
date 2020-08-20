defmodule Ackermann do
  @moduledoc """
  Documentation for `Ackermann`.
  """

  @doc """
  Run Ackermann function for given initials
  More info: https://en.wikipedia.org/wiki/Ackermann_function

  ## Examples

      iex> Ackermann.ack(0, 1)
      2

      iex> Ackermann.ack(3, 6)
      509
      
  """

  def ack(0, n), do: n + 1 
  def ack(m, 0), do: ack(m - 1, 1)
  def ack(m, n), do: ack(m - 1, ack(m, n - 1))
end