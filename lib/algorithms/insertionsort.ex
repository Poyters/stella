defmodule Insertionsort do
  @moduledoc """
	Documentation for `Insertion sort` algorithm. All important
  informations about counting sort you can find on
  [Wikipedia](https://en.wikipedia.org/wiki/Insertion_sort) page.
	
	### Annotations
	 - n - number of elements in list
	"""

  @doc """
  Sort list
  Worst-case performance: O(n^2)
  Average performance: O(n^2)
  Best-case performance: O(n) - for already sorted or empty lists

  ## Examples

    iex> Insertionsort.run([4, 1, 3, 2])
    [1, 2, 3, 4]

    iex> Insertionsort.run([-7, 0, 0, -2, -3, 5, 2])
    [-7, -3, -2, 0, 0, 2, 5]
      
  """
  
  def run(unsorted) when is_list(unsorted), do: run_with_sorted(unsorted, [])

  defp run_with_sorted([], sorted), do: sorted
  defp run_with_sorted([h | t], sorted), do: run_with_sorted(t, insert(h, sorted))

  defp insert(element, []), do: [element]
  defp insert(element, sorted) when element < hd(sorted), do: [element | sorted]
  defp insert(element, [h | t]), do: [h | insert(element, t)]

end
