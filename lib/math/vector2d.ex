defmodule Vector2D do
  @moduledoc """
  Documentation for `Vector 2D`.
  """

  @doc """
  Create a new two dimensional vector from given values

  ## Examples

      iex> Vector2D.new(10, 1)
      %{x: 10, y: 1}

      iex> Vector2D.new()
      %{x: 0, y: 0}
      
  """
  def new(x \\ 0, y \\ 0), do: %{x: x, y: y}

  @doc """
  Returns vector length

  ### Two dimensional vector length chart
  ![print image](assets/images/vector2d_length.png)

  ## Examples

      iex> Vector2D.length(%{x: 2, y: 2})
      2.8284271247461903

      iex> Vector2D.new(-3, 3) |> Vector2D.length()
      4.242640687119285
      
  """
  def length(vector) do 
    :math.sqrt(:math.pow(vector[:x], 2) + :math.pow(vector[:y], 2))
  end

  @doc """
  Increment one vector by another one

  ## Examples

      iex> Vector2D.add(%{x: 2, y: 2}, %{x: 2, y: 2})
      %{x: 4, y: 4}

      iex> Vector2D.new(-3, 3) |> Vector2D.add(%{x: 3, y: 6})
      %{x: 0, y: 9}
      
  """
  def add(curr_vector, given_vector) do 
    %{
      x: curr_vector[:x] + given_vector[:x],
      y: curr_vector[:y] + given_vector[:y]
    }
  end

  @doc """
  Decrement one vector by another one

  ## Examples

      iex> Vector2D.sub(%{x: 2, y: 2}, %{x: 2, y: 2})
      %{x: 0, y: 0}

      iex> Vector2D.new(-3, 3) |> Vector2D.sub(%{x: 3, y: 6})
      %{x: -6, y: -3}
      
  """
  def sub(curr_vector, given_vector) do 
    %{
      x: curr_vector[:x] - given_vector[:x],
      y: curr_vector[:y] - given_vector[:y]
    }
  end

  @doc """
  Scale vector by given scalar

  ## Examples

      iex> Vector2D.scale(%{x: 2, y: 2}, 2)
      %{x: 4, y: 4}

      iex> Vector2D.new(-3, 3) |> Vector2D.scale(3)
      %{x: -9, y: 9}
      
  """
  def scale(vector, scalar) do 
    %{
      x: vector[:x] * scalar,
      y: vector[:y] * scalar
    }
  end

end