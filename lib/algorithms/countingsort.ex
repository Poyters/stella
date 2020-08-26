defmodule Countingsort do
  @moduledoc """
	Documentation for `Countingsort` algorithm
	
	### Annotations
	 - n - number of elements in list
	"""

  @doc """
  Sort list
  Normal complexity: O(n)

  ## Examples

    # iex> Countingsort.sort([4, 1, 3, 5, 2])
    # [1, 2, 3, 4]
      
  """

  def sort([]), do: []

  def sort(list) do
    {min, max} = Enum.min_max(list)
    count = Tuple.duplicate(0, max - min + 1)
    counted = Enum.reduce(list, count, fn item, acc ->
      i = item - min
      put_elem(acc, i, elem(acc, i) + 1)
    end)
    
    Enum.flat_map(min..max, &List.duplicate(&1, elem(counted, &1 - min)))
  end

end