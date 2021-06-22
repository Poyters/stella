defmodule Interval do
  @moduledoc """
  Documentation for `Interval`.
  """

  @doc """
  Checks if number is in interval <min, max> or <min..max>. Works with integers or floats up to 15 decimal places

  ## Examples

      iex> Interval.member?(1, 2, 1)
      true

      iex> Interval.member?(-3, 5, 0)
      true

      iex> Interval.member?(-3.0003, 2.12, 2.13)
      false

  """

  @spec member?(integer | float, integer | float, integer | float):: boolean | nil
  def member?(min, max, _) when min > max, do: nil
  def member?(min, max, x), do: x >= min && x <= max

  @spec random_number(integer | float, integer | float):: boolean | nil
  def random_number(min, max) when min > max, do: nil
  def random_number(min, max), do: Enum.random(min..max)

end
