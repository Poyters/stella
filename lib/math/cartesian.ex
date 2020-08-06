defmodule Cartesian do
  @moduledoc """
  Documentation for `Cartesian`.
  """

  @doc """
  Calculates the proximity to the nearest point. 

  More info: https://gamedev.stackexchange.com/a/8355

  ## Examples

      iex> Cartesian.proximity(%{x: 1, y: 2, z: 3})
      6
      
  """

  def proximity(point) do 
    point[:x] + point[:y] + point[:z]
  end

  @doc """
  Order points looking by x parametr value.
  Returns 1 if A is nearer thatn B, else returns -1

  ## Examples

      iex> Cartesian.order_by_x(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3})
      -1
      
  """

  def order_by_x(point_a, point_b) do 
    if point_a[:x] < point_b[:x], do: -1, else: 1
  end

  @doc """
  Order points looking by y parametr value.
  Returns 1 if A is nearer thatn B, else returns -1

  ## Examples

      iex> Cartesian.order_by_y(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3})
      1
      
  """

  def order_by_y(point_a, point_b) do 
    if point_a[:y] < point_b[:y], do: -1, else: 1
  end

  @doc """
  Order points looking by z parametr value.
  Returns 1 if A is nearer thatn B, else returns -1

  ## Examples

      iex> Cartesian.order_by_z(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3})
      1
      
  """

  def order_by_z(point_a, point_b) do 
    if point_a[:z] < point_b[:z], do: -1, else: 1
  end

  @doc """
  Order points by distance between them.
  Returns 1 if A is nearer thatn B, else returns -1

  ## Examples

      iex> Cartesian.order_by_distance(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3})
      -1
      
  """

  def order_by_distance(point_a, point_b) do 
    if proximity(point_a) < proximity(point_b), do: -1, else: 1
  end

  @doc """
  Determine in which quadrant at two dimensional Cartesian plane point are.

  ## Examples

      iex> Cartesian.determine_quadrant(%{x: 1, y: 2})
      1

      iex> Cartesian.determine_quadrant(%{x: 0, y: 0})
      nil
      
  """

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
  Determine in which quadrant at two dimensional Cartesian plane point are.

  ## Examples

      iex> Cartesian.determine_octan(%{x: 1, y: 2, z: 3})
      0

      iex> Cartesian.determine_octan(%{x: 0, y: 0, z: 3})
      nil
      
  """

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