defmodule Number do
  @moduledoc """
  Documentation for `Time`.
  """

  @doc """
  Check if y is power of x

  ## Examples
    iex> Number.is_power(10, 1)
    false
  """
  def is_power(x, y) do
    cond do
      x == y -> :true
      y == 1 -> x == 1
      :true -> increment_power(x, y, 1)
    end
  end

  defp increment_power(x, y, pow) do
    cond do
      pow < x -> increment_power(x, y, pow*y)
      pow == x -> :true
      :true -> :false
    end
  end
end