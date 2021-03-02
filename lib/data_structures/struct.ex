defmodule Struct do
  @moduledoc """
  Documentation for `Struct` module.
  """

  @doc """
  Converts nested Struct type element to nested Map type

  ## Examples

      iex> Struct.to_map(%{a: 1, b: 2})
      %{a: 1, b: 2}

      iex> Struct.to_map(%{a: 1, b: 2})
      %{a: 1, b: 2}

      iex> Struct.to_map()
      %{}

      iex> Struct.to_map(nil)
      %{}

  """

  def to_map(), do: %{}

  def to_map(nil), do: %{}

  def to_map(map), do: :maps.map(&do_sample/2, map)

  defp do_sample(_key, value), do: ensure_nested_map(value)

  defp ensure_nested_map(list) when is_list(list), do: Enum.map(list, &ensure_nested_map/1)

  defp ensure_nested_map(%{__struct__: _} = struct) do
    map = Map.from_struct(struct)
    :maps.map(&do_sample/2, map)
  end

  defp ensure_nested_map(data), do: data
end