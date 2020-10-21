defmodule Quicksort do
  @moduledoc """
	Documentation for `Quick sort` algorithm. All important
  informations about counting sort you can find on
  [Wikipedia](https://en.wikipedia.org/wiki/Quicksort) page.
	
	### Annotations
	 - n - number of elements in list
	"""

  @doc """
  Sort list
   - Pesimistic complexity: O(n^2)
   - Normal complexity: O(nlgn)

  ## Examples

      iex> Quicksort.run([4, 1, 3, 2])
      [1, 2, 3, 4]

      iex> Quicksort.run([-2.0, 0, 4, 1, 3, 2])
      [-2.0, 0, 1, 2, 3, 4]
      
  """

  def run([]), do: []

  def run([h | t]) do
    {lesser, greater} = Enum.split_with(t, &(&1 < h))
    run(lesser) ++ [h] ++ run(greater)
  end
end
