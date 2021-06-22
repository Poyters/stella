defmodule Range do
  @moduledoc """
  Documentation for `Range`.
  """

  @spec member?(list, number) :: boolean
  @doc """
  Checks if

  ## Examples

      iex> Range.member?(1..10, 1)
      true

  """
  def member?(range, x), do: Enum.member?(range, x)

end
