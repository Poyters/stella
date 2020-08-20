defmodule Heapsort do
  @moduledoc """
	Documentation for `Heapsort` algorithm
	
	Annotations
	n - number of elements in heap
	"""

  @doc """
  Create new, empty Heap

  ## Examples

  iex> Heap.new()
  []
      
  """

  def sort(heap) do
    max_heap = Heap.build_max_heap(heap)
  end
end