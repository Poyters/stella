defmodule Bubblesort do
  @moduledoc """
	Documentation for `Bubble sort` algorithm. All important
  informations about counting sort you can find on
  [Wikipedia](https://en.wikipedia.org/wiki/Bubble_sort) page.
	
	### Annotations
	 - n - number of elements in list
	"""

  @doc """
  Sort list
  Best-case performance: O(n)
  Average performance: O(n^2)
  Worst-case performance: O(n^2)

  ## Examples

    # iex> Bubblesort.run([4, 1, 3, 2])
    # [1, 2, 3, 4]

     # iex> Bubblesort.run([-2.0, 0, 4, 1, 3, 2])
    # [-2.0, 0, 1, 2, 3, 4]
      
  """
  def run(list) when is_list(list) do
  after_iteration = run_internal(list)

    if after_iteration == list, do: after_iteration, else: run(after_iteration)
  end

  def run_internal([x, y | tail]) when x > y, do: [y | run_internal([x | tail])]
  def run_internal([x, y | tail]), do: [x | run_internal([y | tail])]
  def run_internal(list), do: list



end
