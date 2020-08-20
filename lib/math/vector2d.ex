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

  @doc """
  Multiply vector by another one

  ## Examples

      iex> Vector2D.multiply(%{x: 2, y: 2}, %{x: 2, y: 2})
      %{x: 4, y: 4}

      iex> Vector2D.new(-3, 3) |> Vector2D.multiply(%{x: 2, y: 3})
      %{x: -6, y: 9}
      
  """
  def multiply(curr_vector, given_vector) do 
    %{
      x: curr_vector[:x] * given_vector[:x],
      y: curr_vector[:y] * given_vector[:y]
    }
  end

  @doc """
  Divide vector by another one

  ## Examples

      iex> Vector2D.divide(%{x: 2, y: 2}, %{x: 2, y: 2})
      %{x: 1.0, y: 1.0}

      iex> Vector2D.new(-3, 3) |> Vector2D.divide(%{x: 2, y: 3})
      %{x: -1.5, y: 1.0}
      
  """
  def divide(curr_vector, given_vector) do 
    %{
      x: curr_vector[:x] / given_vector[:x],
      y: curr_vector[:y] / given_vector[:y]
    }
  end

  @doc """
  Check if given vectors are equal

  ## Examples

      iex> Vector2D.equals(%{x: 2, y: 2}, %{x: 2, y: 2})
      :true

      iex> Vector2D.equals(%{x: 2, y: 2}, %{x: 2.0, y: 2.0})
      :true

      iex> Vector2D.equals(%{x: 2.0, y: 2.0}, %{x: 2, y: 2})
      :true

      iex> Vector2D.equals(%{x: 2.0, y: 2.0}, %{x: 2, y: 2.0})
      :true

      iex> Vector2D.new(-3, 3) |> Vector2D.equals(%{x: 2, y: 3})
      :false
      
  """
  def equals(curr_vector, given_vector) do 
    curr_vector[:x] / 1 === given_vector[:x] / 1 && 
    curr_vector[:y] / 1 === given_vector[:y] / 1
  end

  @doc """
  Convert vector from struct to list

  ## Examples

      iex> Vector2D.to_list(%{x: 1, y: 2})
      [1, 2]
      
  """
  def to_list(vector), do: [vector[:x], vector[:y]]

  @doc """
  Convert vector from list to struct

  ## Examples

      iex> Vector2D.to_struct([1, 2])
      %{x: 1, y: 2}
      
  """
  def to_struct(vector) do
    %{
      x: Enum.at(vector, 0),
      y: Enum.at(vector, 1)
    }
  end

  @doc """
  Calculate distance between vectors

  ## Examples

      iex> Vector2D.distance(%{x: 2.0, y: 2.0}, %{x: 2, y: 2.0})
      0.0

      iex> Vector2D.distance(%{x: -2, y: 4}, %{x: 2, y: 2.0})
      4.47213595499958
      
  """
  def distance(curr_vector, given_vector) do 
    delta_x = curr_vector[:x] - given_vector[:x]
    delta_y = curr_vector[:y] - given_vector[:y]

    :math.sqrt(:math.pow(delta_x, 2) + :math.pow(delta_y, 2))
  end

  @doc """
  Rotate vector by angel

  ## Examples

      iex> Vector2D.rotate(%{x: 2.0, y: 2.0}, 2)
      %{x: -2.650888526745648, y: 0.9863011805570786}
      
  """
  def rotate(vector, angle) do 
    cos = :math.cos(angle)
    sin = :math.sin(angle)

    %{
      x: vector[:x] * cos - vector[:y] * sin,
      y: vector[:x] * sin + vector[:y] * cos
    }
  end

end