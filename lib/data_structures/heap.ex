defmodule Heap do
  @moduledoc """
	Documentation for `Heap` data structure
	
	Annotations
	n - number of elements in heap
	"""

  @doc """
  Create new, empty Heap

  ## Examples

		iex> Heap.new()
		[]
      
  """

  def new, do: []

  @doc """
  Return parent index

  ## Examples

		iex> Heap.parent(7)
		3

		iex> Heap.parent(0)
		nil

      
  """

	def parent(index) do
		leaf = Integer.floor_div(index - 1, 2)

		if leaf >= 0, do: leaf, else: nil
	end

  @doc """
  Return left element of index

  ## Examples

		iex> Heap.left(2)
		5

		iex> Heap.left(4)
		9
      
  """

	def left(index), do: index * 2 + 1

  @doc """
  Return right element of index

  ## Examples

		# iex> Heap.right(2)
		# 6
      
  """

  def right(index), do: index * 2 + 2

	def max_heap(heap, index) do
		l = left(index)
		r = right(index)
		largest = if (
			l < length(heap) &&
			Enum.at(heap, l) > Enum.at(heap, index)
		), do: l, else: index

		if (
			r < length(heap) &&
			Enum.at(heap, r) > Enum.at(heap, largest)
		), do: r, else: largest
	end

	@doc """
	Method complexity: O(lgn)
	Max heapify changes list of elements in max heap where for each 
	elements of list (except roots) ownership takes place:
	Heap[parent(i)] >= Heap[i]

  ## Examples

		iex> Heap.max_heapify([16, 4, 10, 14, 7, 9, 3, 2, 8, 1], 1)
		[16, 14, 10, 8, 7, 9, 3, 2, 4, 1]
      
  """

	def max_heapify(heap, index) do
		largest = max_heap(heap, index)
	
		if largest != index do
			swap_helper = Enum.at(heap, index)

			heap
				|> List.replace_at(index, Enum.at(heap, largest))
				|> List.replace_at(largest, swap_helper)
				|> max_heapify(largest)
		else
			heap
		end
	end

	@doc """
	Method complexity: O(n)
	Restores ownership of a whole heap to	Heap[parent(i)] >= Heap[i],
	so build heap max

  ## Examples

		iex> Heap.build_max_heap([4, 1, 3, 2, 16, 9, 10, 14, 8, 7])
		[16, 14, 10, 8, 7, 9, 3, 2, 4, 1]

		iex> Heap.build_max_heap([16, 4, 9, 14, 7, 10, 3, 2, 8, 1])
		[16, 14, 10, 8, 7, 9, 3, 2, 4, 1]
      
  """ 
	
	def build_max_heap(heap) do
		leaf = Integer.floor_div(length(heap), 2) - 1
		build_max_heap(max_heapify(heap, leaf), leaf)
	end

	def build_max_heap(heap, i) do
		if i > 0, do: build_max_heap(max_heapify(heap, i - 1), i - 1), else: heap
	end

end