defmodule Carthesian do
  @moduledoc """
  Documentation for `Time`.
  """

  @doc """
  Calculates the proximity to the nearest point. 

  More info: https://gamedev.stackexchange.com/a/8355

  ## Examples

      iex> Carthesian.proximity(%{x: 1, y: 2, z: 3})
      6
      
  """

  def proximity(point) do 
    point[:x] + point[:y] + point[:z]
  end

  @doc """
  Order points looking by x parametr value

  ## Examples

      iex> Carthesian.order_by_x(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3})
      -1
      
  """

  def order_by_x(point_a, point_b) do 
    if point_a[:x] < point_b[:x], do: -1, else: 1
  end

  @doc """
  Order points looking by y parametr value

  ## Examples

      iex> Carthesian.order_by_y(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3})
      1
      
  """

  def order_by_y(point_a, point_b) do 
    if point_a[:y] < point_b[:y], do: -1, else: 1
  end

  @doc """
  Order points looking by z parametr value

  ## Examples

      iex> Carthesian.order_by_z(%{x: 1, y: 2, z: 3}, %{x: 2, y: 2, z: 3})
      1
      
  """

  def order_by_z(point_a, point_b) do 
    if point_a[:z] < point_b[:z], do: -1, else: 1
  end
end