defmodule Number do
  @moduledoc """
  Documentation for `Number`.
  """

  @doc """
  Check if y is power of x

  ## Examples

      iex> Number.is_power(10, 1)
      false
      
  """
  def is_power(x, y) do
    cond do
      x == y -> true
      y == 1 -> x == 1
      true -> increment_power(x, y, 1)
    end
  end

  defp increment_power(x, y, pow) do
    cond do
      pow < x -> increment_power(x, y, pow*y)
      pow == x -> true
      true -> false
    end
  end

  @doc """
  Puts a given number to min-max range. In other words, input value
  will be minimum equal to min value or maximum equal to max value.
  Function assumes min < max

  ## Examples

      iex> Number.clamp(10, 1, 2)
      2
      
  """
  def clamp(number, _min, max) when number > max, do: max
  def clamp(number, min, _max) when number < min, do: min
  def clamp(number, _min, _max), do: number

end