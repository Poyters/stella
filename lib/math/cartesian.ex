defmodule Cartesian do
  @moduledoc """
  Cartesian 2D and 3D plane
  """

  @doc """
  Calculates the proximity to the nearest point.
  More info [here](https://gamedev.stackexchange.com/a/8355)

  ## Examples

      iex> Cartesian.proximity(%{x: 1, y: 2, z: 3})
      6

  """

  @spec proximity(map) :: number
  def proximity(point) do
    point[:x] + point[:y] + point[:z]
  end

  @doc """
  Orders points looking by x parametr value.
  Returns 1 if A is nearer thatn B, else returns -1.

  ## Examples

      iex> Cartesian.order_by_x(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3})
      -1

  """

  @spec order_by_x(map, map) :: -1 | 1
  def order_by_x(point_a, point_b) do
    if point_a[:x] < point_b[:x], do: -1, else: 1
  end

  @doc """
  Orders points looking by y parametr value.
  Returns 1 if A is nearer thatn B, else returns -1.

  ## Examples

      iex> Cartesian.order_by_y(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3})
      1

  """

  @spec order_by_y(map, map) :: -1 | 1
  def order_by_y(point_a, point_b) do
    if point_a[:y] < point_b[:y], do: -1, else: 1
  end

  @doc """
  Orders points looking by z parametr value.
  Returns 1 if A is nearer thatn B, else returns -1.

  ## Examples

      iex> Cartesian.order_by_z(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3})
      1

  """

  @spec order_by_z(map, map) :: -1 | 1
  def order_by_z(point_a, point_b) do
    if point_a[:z] < point_b[:z], do: -1, else: 1
  end

  @doc """
  Orders points by distance between them.
  Returns 1 if A is nearer that B, else returns -1.

  ## Examples

      iex> Cartesian.order_by_distance(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3})
      -1

  """

  @spec order_by_distance(map, map) :: -1 | 1
  def order_by_distance(point_a, point_b) do
    if proximity(point_a) < proximity(point_b), do: -1, else: 1
  end

  @doc """
  Determines in which quadrant on the two dimensional Cartesian plane point is located.

  ![print image](assets/images/cartesian_plane.jpg)

  ## Examples

      iex> Cartesian.determine_quadrant(%{x: 1, y: 2})
      1

      iex> Cartesian.determine_quadrant(%{x: 1.06, y: 2.12})
      1

      iex> Cartesian.determine_quadrant(%{x: -0.06, y: 2.12})
      2

      iex> Cartesian.determine_quadrant(%{x: 0, y: 0})
      nil

  """

  @spec determine_quadrant(map) :: nil | 1 | 2 | 3 | 4
  def determine_quadrant(point) do
    cond do
      point[:x] > 0 && point[:y] > 0 -> 1
      point[:x] < 0 && point[:y] > 0 -> 2
      point[:x] < 0 && point[:y] < 0 -> 3
      point[:x] > 0 && point[:y] < 0 -> 4
      true -> nil
    end
  end



  @doc """
  Determines in which octan on the three dimensional Cartesian plane point is located.

  ![print image](assets/images/3d_cartesian_plane.png)

  ## Examples

      iex> Cartesian.determine_octan(%{x: 1, y: 2, z: 3})
      0

      iex> Cartesian.determine_octan(%{x: 0, y: 0, z: 3})
      nil

  """
  @spec determine_octan(map) :: nil | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7
  def determine_octan(point) do
    cond do
      point[:x] > 0 && point[:y] > 0 && point[:z] > 0 -> 0
      point[:x] < 0 && point[:y] > 0 && point[:z] > 0 -> 1
      point[:x] < 0 && point[:y] < 0 && point[:z] > 0 -> 2
      point[:x] > 0 && point[:y] < 0 && point[:z] > 0 -> 3
      point[:x] > 0 && point[:y] < 0 && point[:z] < 0 -> 4
      point[:x] < 0 && point[:y] < 0 && point[:z] < 0 -> 5
      point[:x] < 0 && point[:y] > 0 && point[:z] < 0 -> 6
      point[:x] > 0 && point[:y] > 0 && point[:z] < 0 -> 7
      true -> nil
    end
  end
end
