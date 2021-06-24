defmodule Heap do
  @moduledoc """
	Documentation for `Heap` data structure
	"""

	@type heap :: list(integer)

  @doc """
  Create new, empty Heap

  ## Examples

			iex> Heap.new()
			[]

  """
	@spec new :: []
  def new, do: []

  @doc """
  Checks if heap is empty

  ## Examples

			iex> Heap.empty?([1, 2, 3])
			false

  """
	@spec empty?(heap) :: boolean
  def empty?(heap), do: length(heap) == 0

	@doc """
  Checks if the passed integer is a member of the heap

  ## Examples

			iex> Heap.member?([1, 2, 3], 2)
			true

			iex> Heap.member?([1, 2, 3], 5)
			false

  """
	@spec member?(heap, integer) :: boolean
  def member?(heap, value), do: Enum.member?(heap, value)

	@doc """
  Returns current size of heap

  ## Examples

			iex> Heap.size([1, 2, 3])
			3

			iex> Heap.size([])
			0

  """
	@spec size(heap) :: non_neg_integer
  def size(heap), do: length(heap)

	@doc """
  Returns the root value of the heap. Assume the passed heap has the max or min heap properties.

  ## Examples

			iex> Heap.root([16, 14, 10, 8, 7, 9, 3, 2, 4, 1])
			16

			iex> Heap.root([44, 35, 42, 33, 31, 19, 27, 10, 26, 14])
			44

			iex> Heap.root([3, 8, 10, 15, 10, 12])
			3

  """
	@spec root(heap) :: integer | nil
  def root(heap), do: List.first(heap)

  @doc """
  Returns parent index.

  ## Examples

			iex> Heap.parent(7)
			3

			iex> Heap.parent(0)
			nil


  """
	@spec parent(integer) :: nil | non_neg_integer
	def parent(index) do
		leaf = Integer.floor_div(index - 1, 2)

		if leaf >= 0, do: leaf, else: nil
	end

  @doc """
  Returns index of left leaf.

  ## Examples

			iex> Heap.left(2)
			5

			iex> Heap.left(4)
			9

  """

	@spec left(non_neg_integer) :: non_neg_integer
	def left(index), do: index * 2 + 1

  @doc """
  Returns index of right leaf.

  ## Examples

			iex> Heap.right(2)
			6

  """
	@spec right(non_neg_integer) :: non_neg_integer
  def right(index), do: index * 2 + 2

	@doc """
		Method complexity: O(lgn)

		Max heapify changes list of elements in max heap. There is property for every element in heap:

		Heap[parent(i)] >= Heap[i]

  ## Examples

			iex> Heap.max_heapify([16, 4, 10, 14, 7, 9, 3, 2, 8, 1], 1)
			[16, 14, 10, 8, 7, 9, 3, 2, 4, 1]

  """
	@spec max_heapify(heap, integer, integer | nil) :: heap
	def max_heapify(heap, index, len \\ nil) do
		heap_size = if len != nil, do: len, else: length(heap)
		largest = max_heap(heap, index, heap_size)

		if largest != index do
			swap(List.to_tuple(heap), index, largest)
				|> Tuple.to_list
				|> max_heapify(largest, heap_size)
		else
			heap
		end
	end


	@doc """
		Method complexity: O(lgn)

		Min heapify changes list of elements in max heap. There is property for every element in heap:

		Heap[parent(i)] <= Heap[i]

  ## Examples

			iex> Heap.min_heapify([1, 4, 10, 14, 7, 9, 3, 2, 8, 16], 1)
			[1, 4, 10, 14, 7, 9, 3, 2, 8, 16]

  """
	@spec min_heapify(heap, integer, integer | nil) :: heap
	def min_heapify(heap, index, len \\ nil) do
		heap_size = if len != nil, do: len, else: length(heap)
		largest = min_heap(heap, index, heap_size)

		if largest != index do
			swap(List.to_tuple(heap), index, largest)
				|> Tuple.to_list
				|> min_heapify(largest)
		else
			heap
		end
	end

	@doc """
		Method complexity: O(n)

		Transforms passed heap (list) into specified heap type
		 - min: (Heap[parent(i)] <= Heap[i])
		 - max: (Heap[parent(i)] >= Heap[i])

  ## Examples

			iex> Heap.build_heap([4, 1, 3, 2, 16, 9, 10, 14, 8, 7], :max)
			[16, 14, 10, 8, 7, 9, 3, 2, 4, 1]

			iex> Heap.build_heap([16, 4, 9, 14, 7, 10, 3, 2, 8, 1], :max)
			[16, 14, 10, 8, 7, 9, 3, 2, 4, 1]

			iex> Heap.build_heap([16, 4, 9, 14, 7, 10, 3, 2, 8, 1], :min)
			[1, 2, 3, 8, 4, 10, 9, 14, 16, 7]

  """
	@spec build_heap(heap, atom) :: heap
	def build_heap(heap, type) do
		leaf = Integer.floor_div(length(heap), 2) - 1
		if type == :max,
		do: build_heap(max_heapify(heap, leaf), type, leaf),
		else: build_heap(min_heapify(heap, leaf), type, leaf)
	end

	defp build_heap(heap, type, i) when i >= 0 do
		if type == :max,
		do: build_heap(max_heapify(heap, i), type, i - 1),
		else: build_heap(min_heapify(heap, i), type, i - 1)
	end

	defp build_heap(heap, _type, _i), do: heap

	@doc """
		Method complexity: O(n)

		Sorts the heap (from min to max)
  ## Examples

			iex> Heap.sort([4, 1, 3, 2, 16, 9, 10, 14, 8, 7])
			[1, 2, 3, 4, 7, 8, 9, 10, 14, 16]

  """
	@spec sort(heap) :: heap
	def sort(heap) do
		max_heap = build_heap(heap, :max)
		heap_size = size(max_heap)

		max_heap |> sort(heap_size)
	end

	defp sort(max_heap, j) when j <= 1, do: max_heap

	defp sort(max_heap, j) do
		i = j - 1

		swap(List.to_tuple(max_heap), 0, i)
			|> Tuple.to_list
			|> max_heapify(0, i)
			|> sort(i)
	end

	@spec max_heap(heap, integer, integer) :: integer
	defp max_heap(heap, index, len) do
		l = left(index)
		r = right(index)
		largest = if (
			l < len &&
			Enum.at(heap, l) > Enum.at(heap, index)
		), do: l, else: index

		if (
			r < len &&
			Enum.at(heap, r) > Enum.at(heap, largest)
		), do: r, else: largest
	end

	@spec min_heap(heap, integer, integer) :: integer
	defp min_heap(heap, index, len) do
		l = left(index)
		r = right(index)
		largest = if (
			l < len &&
			Enum.at(heap, l) < Enum.at(heap, index)
		), do: l, else: index

		if (
			r < len &&
			Enum.at(heap, r) < Enum.at(heap, largest)
		), do: r, else: largest
	end

	defp swap(heap, i, j) do
    {vi, vj} = {elem(heap, i), elem(heap, j)}
    heap |> put_elem(i, vj) |> put_elem(j, vi)
  end

end
