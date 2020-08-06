defmodule Isometric do
  @moduledoc """
  Documentation for `Isometric`.
  """

  @doc """
  Projects 2D/3D carthesian coordinates to 2D isometric coordinates.
  The X axis goes from top-left to bottom-right.
  The Y axis goes from top-right to bottom-left.
  The Z axis goes straight up.

  ## Examples

      iex> Isometric.convert_cartesian_to_isometric(1, 2)
      %{x: -1, y: 1.5}
      
  """
  def convert_cartesian_to_isometric(x, y, z \\ 0) do
    %{
      x: x - y,
      y: (x + y) / 2 - z,
    }
  end
end