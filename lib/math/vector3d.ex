defmodule Vector3D do
  @moduledoc """
  Documentation for `Vector 3D`.
  """

  @doc """
  Create a new two dimensional vector from given values

  ## Examples

      iex> Vector3D.new(10, 1)
      %{x: 10, y: 1, z: 0}

      iex> Vector3D.new()
      %{x: 0, y: 0, z: 0}

  """
  @spec new(number, number, number) :: %{x: number, y: number, z: number}
  def new(x \\ 0, y \\ 0, z \\ 0), do: %{x: x, y: y, z: z}

  @doc """
  Returns vector length

  ### Two dimensional vector length chart

  ## Examples

      iex> Vector3D.length(%{x: 2, y: 2, z: 2})
      3.4641016151377544

      iex> Vector3D.new(-3, 3, 1) |> Vector3D.length()
      4.358898943540674

  """
  @spec length(%{x: number, y: number, z: number}) :: float
  def length(vector) do
    :math.sqrt(
      :math.pow(vector[:x], 2) +
      :math.pow(vector[:y], 2) +
      :math.pow(vector[:z], 2)
    )
  end

  @doc """
  Increment one vector by another one

  ## Examples

      iex> Vector3D.add(%{x: 2, y: 2, z: 2}, %{x: 2, y: 2, z: 2})
      %{x: 4, y: 4, z: 4}

      iex> Vector3D.new(-3, 3, 4) |> Vector3D.add(%{x: 3, y: 6, z: 3})
      %{x: 0, y: 9, z: 7}

  """
  @spec add(%{x: number, y: number, z: number}, %{x: number, y: number, z: number}) :: %{x: number, y: number, z: number}
  def add(curr_vector, given_vector) do
    %{
      x: curr_vector[:x] + given_vector[:x],
      y: curr_vector[:y] + given_vector[:y],
      z: curr_vector[:z] + given_vector[:z]
    }
  end

  @doc """
  Decrement one vector by another one

  ## Examples

      iex> Vector3D.sub(%{x: 2, y: 2, z: 2}, %{x: 2, y: 2, z: 2})
      %{x: 0, y: 0, z: 0}

      iex> Vector3D.new(-3, 3, 5) |> Vector3D.sub(%{x: 3, y: 6, z: 5})
      %{x: -6, y: -3, z: 0}

  """
  @spec sub(%{x: number, y: number, z: number}, %{x: number, y: number, z: number}) :: %{x: number, y: number, z: number}
  def sub(curr_vector, given_vector) do
    %{
      x: curr_vector[:x] - given_vector[:x],
      y: curr_vector[:y] - given_vector[:y],
      z: curr_vector[:z] - given_vector[:z]
    }
  end

  @doc """
  Scale vector by given scalar

  ## Examples

      iex> Vector3D.scale(%{x: 2, y: 2, z: 2}, 2)
      %{x: 4, y: 4, z: 4}

      iex> Vector3D.new(-3, 3, 1) |> Vector3D.scale(3)
      %{x: -9, y: 9, z: 3}

      iex> Vector3D.new(-3, 3, 1) |> Vector3D.scale(3.08)
      %{x: -9.24, y: 9.24, z: 3.08}

  """
  @spec scale(%{x: number, y: number, z: number}, float) :: %{x: number, y: number, z: number}
  def scale(vector, scalar) do
    %{
      x: vector[:x] * scalar,
      y: vector[:y] * scalar,
      z: vector[:z] * scalar
    }
  end

  @doc """
  Multiply vector by another one

  ## Examples

      iex> Vector3D.multiply(%{x: 2, y: 2, z: 2}, %{x: 2, y: 2, z: 2})
      %{x: 4, y: 4, z: 4}

      iex> Vector3D.new(-3, 3, 2) |> Vector3D.multiply(%{x: 2, y: 3, z: 2})
      %{x: -6, y: 9, z: 4}

  """
  @spec multiply(%{x: number, y: number, z: number}, %{x: number, y: number, z: number}) :: %{x: number, y: number, z: number}
  def multiply(curr_vector, given_vector) do
    %{
      x: curr_vector[:x] * given_vector[:x],
      y: curr_vector[:y] * given_vector[:y],
      z: curr_vector[:z] * given_vector[:z]
    }
  end

  @doc """
  Divide vector by another one

  ## Examples

      iex> Vector3D.divide(%{x: 2, y: 2, z: 2}, %{x: 2, y: 2, z: 2})
      %{x: 1.0, y: 1.0, z: 1.0}

      iex> Vector3D.new(-3, 3, 3) |> Vector3D.divide(%{x: 2, y: 3, z: 2})
      %{x: -1.5, y: 1.0, z: 1.5}

  """
  @spec divide(%{x: number, y: number, z: number}, %{x: number, y: number, z: number}) :: %{x: number, y: number, z: number}
  def divide(curr_vector, given_vector) do
    %{
      x: curr_vector[:x] / given_vector[:x],
      y: curr_vector[:y] / given_vector[:y],
      z: curr_vector[:z] / given_vector[:z]
    }
  end

  @doc """
  Check if given vectors are equal

  ## Examples

      iex> Vector3D.equals(%{x: 2, y: 2, z: 2}, %{x: 2, y: 2, z: 2})
      true

      iex> Vector3D.equals(%{x: 2, y: 2, z: 2}, %{x: 2.0, y: 2.0, z: 2.0})
      true

      iex> Vector3D.equals(%{x: 2.0, y: 2.0, z: 2.0}, %{x: 2, y: 2, z: 2})
      true

      iex> Vector3D.equals(%{x: 2.0, y: 2.0, z: 2.0}, %{x: 2, y: 2.0, z: 2.0})
      true

      iex> Vector3D.new(-3, 3, 3) |> Vector3D.equals(%{x: 2, y: 3, z: 2})
      false

  """
  @spec equals(%{x: number, y: number, z: number}, %{x: number, y: number, z: number}) :: boolean
  def equals(curr_vector, given_vector) do
    curr_vector[:x] / 1 === given_vector[:x] / 1 &&
    curr_vector[:y] / 1 === given_vector[:y] / 1 &&
    curr_vector[:z] / 1 === given_vector[:z] / 1
  end

  @doc """
  Convert vector from struct to list

  ## Examples

      iex> Vector3D.to_list(%{x: 1, y: 2, z: 3})
      [1, 2, 3]

  """
  @spec to_list(%{x: number, y: number, z: number}) :: [...]
  def to_list(vector), do: [vector[:x], vector[:y], vector[:z]]

  @doc """
  Convert vector from list to struct

  ## Examples

      iex> Vector3D.to_struct([1, 2, 3])
      %{x: 1, y: 2, z: 3}

  """
  @spec to_struct([...]) :: %{x: number, y: number, z: number}
  def to_struct(vector) do
    %{
      x: Enum.at(vector, 0),
      y: Enum.at(vector, 1),
      z: Enum.at(vector, 2)
    }
  end

  @doc """
  Calculate distance between vectors

  ## Examples

      iex> Vector3D.distance(%{x: 2.0, y: 2.0, z: 2.0}, %{x: 2, y: 2.0, z: 2.0})
      0.0

      iex> Vector3D.distance(%{x: -2, y: 4, z: 5}, %{x: 2, y: 2.0, z: 1})
      6.0

  """
  @spec distance(%{x: number, y: number, z: number}, %{x: number, y: number, z: number}) :: float
  def distance(curr_vector, given_vector) do
    delta_x = curr_vector[:x] - given_vector[:x]
    delta_y = curr_vector[:y] - given_vector[:y]
    delta_z = curr_vector[:z] - given_vector[:z]

    :math.sqrt(
      :math.pow(delta_x, 2) +
      :math.pow(delta_y, 2) +
      :math.pow(delta_z, 2)
    )
  end

end
