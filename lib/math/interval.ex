defmodule Interval do
  @moduledoc """
  Documentation for `Interval`.
  """

  @doc """
  Checks if number is in interval <min, max>. Works with integers or floats up to 15 decimal places.

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

  @doc """
  Checks if interval is contained in the second one

  ## Examples

      iex> Interval.contained?(1..2, 1..2)
      true

      iex> Interval.contained?(1..2, 1..3)
      true

      iex> Interval.contained?(-5..-3, -4..3)
      false

  """

  @spec contained?(Range, Range):: boolean
  def contained?(min..max, destination_range) do
    Enum.member?(destination_range, min) && Enum.member?(destination_range, max)
  end

  @doc """
  Returns random integer in <min, max> range

  ## Examples

      iex> Interval.random_number(1, 1)

      iex> Interval.random_number(-31, 5)

      iex> Interval.random_number(-31, -75)
      nil

  """

  @spec random_number(integer, integer):: integer | nil
  def random_number(min, max) when min > max, do: nil
  def random_number(min, max), do: Enum.random(min..max)

end
