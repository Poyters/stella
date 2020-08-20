defmodule Quicksort do
  @moduledoc """
	Documentation for `Quicksort` algorithm
	
	Annotations
	n - number of elements in list
	"""

  @doc """
  Sort list
  Pesimistic complexity: O(n^2)
  Normal complexity: O(nlgn)

  ## Examples

    # iex> Quicksort.sort([4, 1, 3, 2])
    # [1, 2, 3, 4]

     # iex> Quicksort.sort([-2.0, 0, 4, 1, 3, 2])
    # [-2.0, 0, 1, 2, 3, 4]
      
  """

  def sort([]), do: []

  def sort([h | t]) do
    {lesser, greater} = Enum.split_with(t, &(&1 < h))
    sort(lesser) ++ [h] ++ sort(greater)
  end
end
