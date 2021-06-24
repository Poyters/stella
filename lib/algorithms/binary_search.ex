defmodule BinarySearch do
  @moduledoc """
	Binary search is a search algorithm that finds the position of a target value within a sorted array.

	### Annotations
	 - n - number of elements in list
	"""

  @doc """
  Find the number in the list and return its index. Requires a sorted list as input
   - Time complexity: O(log2n)
   - Memory complexity: O(1)

  ## Examples

      iex> BinarySearch.run([-1, 2, 3.00000001, 4], 3.00000001)
      2

      iex> BinarySearch.run([0, 0, 0, 0, 1, 2, 3, 4], 0)
      3

      iex> BinarySearch.run([-5, 0, 0, 1, 1, 2, 3, 4], 5)
      :not_found

  """
  @spec run(list, number) :: :not_found | non_neg_integer
  def run(list, searched_value), do: priv_run(List.to_tuple(list), searched_value, 0, length(list)-1)

  defp priv_run(_tuple, _searched_value, low, high) when high < low, do: :not_found

  defp priv_run(tuple, searched_value, low, high) do
    mid = div(low + high, 2)
    mid_value = elem(tuple, mid)
    cond do
      mid_value > searched_value -> priv_run(tuple, searched_value, low, mid-1)
      mid_value < searched_value -> priv_run(tuple, searched_value, mid+1, high)
      mid_value == searched_value -> mid
    end
  end

end
