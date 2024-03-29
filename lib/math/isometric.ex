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
  @spec convert_cartesian_to_isometric(number, number, number) :: %{x: number, y: float}
  def convert_cartesian_to_isometric(x, y, z \\ 0) do
    %{
      x: x - y,
      y: (x + y) / 2 - z,
    }
  end

  @doc """
  Convert coorddinates to string

  ## Examples

      iex> Isometric.to_string(1, 2)
      "x: 1, y: 2"

  """
  @spec to_string(number, number) :: <<_::64, _::_*8>>
  def to_string(x, y), do: "x: #{x}, y: #{y}"

  @doc """
  Convert coorddinates to string

  ## Examples

      iex> Isometric.to_string(1, 2, 3)
      "x: 1, y: 2, z: 3"

      iex> Isometric.to_string(1, 2, 3)
      "x: 1, y: 2, z: 3"

  """
  @spec to_string(number, number, number) :: <<_::64, _::_*8>>
  def to_string(x, y, z), do: "x: #{x}, y: #{y}, z: #{z}"

  @doc """
  Convert point to string

  ## Examples

      iex> Isometric.point_to_string(%{x: 1, y: 2, z: 3})
      "x: 1, y: 2, z: 3"

  """
  @spec point_to_string(map) :: <<_::64, _::_*8>>
  def point_to_string(point) do
    if point[:z] do
       "x: #{point[:x]}, y: #{point[:y]}, z: #{point[:z]}"
    else
      "x: #{point[:x]}, y: #{point[:y]}"
    end
  end

  @doc """
  Convert string to point (2D or 3D)

  ## Examples

      iex> Isometric.string_to_point("x: 1, y: 2, z: 3")
      %{x: 1, y: 2, z: 3}

  """
  @spec string_to_point(binary) :: map
  def string_to_point(string) do
    string
    |> String.split([", ", ": "])
    |> Enum.chunk_every(2)
    |> Enum.map(fn [key, value] ->
        {String.to_atom(key), String.to_integer(value)}
      end)
    |> Map.new
  end

  @doc """
  Convert string to point (2D or 3D)

  ## Examples

      iex> Isometric.distance_between(%{x: -1, y: 2}, %{x: 1, y: 2})
      2

      iex> Isometric.distance_between(%{x: -91, y: -20}, %{x: -10, y: 2})
      103

  """
  @spec distance_between(map, map) :: number
  def distance_between(point_a, point_b) do
    x_delta = abs(point_a[:x] - point_b[:x])
    y_delta = abs(point_a[:y] - point_b[:y])

    x_delta + y_delta
  end
end
