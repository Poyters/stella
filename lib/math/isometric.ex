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

  @doc """
  Convert coorddinates to string

  ## Examples

      iex> Isometric.to_string(1, 2)
      "x: 1, y: 2"
      
  """
  def to_string(x, y) do
    "x: #{x}, y: #{y}"
  end

  @doc """
  Convert coorddinates to string

  ## Examples

      iex> Isometric.to_string(1, 2, 3)
      "x: 1, y: 2, z: 3"
      
  """
  def to_string(x, y, z) do
    "x: #{x}, y: #{y}, z: #{z}"
  end

  @doc """
  Convert point to string

  ## Examples

      iex> Isometric.point_to_string(%{x: 1, y: 2, z: 3})
      "x: 1, y: 2, z: 3"
      
  """
  def point_to_string(point) do
    if point[:z] do
       "x: #{point[:x]}, y: #{point[:y]}, z: #{point[:z]}"
    else 
      "x: #{point[:x]}, y: #{point[:y]}"
    end
  end

  @doc """
  Convert point to string

  ## Examples

      iex> Isometric.string_to_point("x: 1, y: 2, z: 3")
      %{x: 1, y: 2, z: 3}
      
  """
  def string_to_point(string) do
    items = string 
    |> String.split([", ", ": "])
    |> Enum.chunk_every(2)
    |> Enum.map(fn [key, value] -> 
        {String.to_atom(key), String.to_integer(value)} 
      end) 
    |> Map.new
  end
end