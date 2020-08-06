defmodule Carthesian do
  @moduledoc """
  Documentation for `Time`.
  """

  @doc """
  Calculates the proximity to the nearest point. 

  More info: https://gamedev.stackexchange.com/a/8355

  ## Examples

      iex> Number.is_power(10, 1)
      false
      
  """

  def proximity(point) do 
    point[:x] + point[:y] + point[:z]
  end
end