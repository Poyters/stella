defmodule Heapsort do
  @moduledoc """
	Documentation for `Heapsort` algorithm
	
	Annotations
	n - number of elements in heap
	"""

  @doc """
  Sort heap
  Complexity: O(nlgn)

  ## Examples

    # iex> Heapsort.sort([4, 1, 3, 2, 16, 9, 10, 14, 8, 7])
    # [1, 2, 3, 4, 7, 8, 9, 10, 14, 16]
      
  """

  def sort(heap) do
    heap
      |> Heap.build_max_heap
      |> sort(length(heap) - 1)
  end
 
  defp sort(heap, finish) when finish > 0 do
    Heap.swap(List.to_tuple(heap), 0, finish)
      |> Tuple.to_list
      |> Heap.max_heapify(0)
      |> sort(finish-1)
  end

  defp sort(heap, _), do: heap

end