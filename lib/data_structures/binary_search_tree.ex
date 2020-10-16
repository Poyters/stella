defmodule BST do
  @moduledoc """
  Documentation for `Binary search tree` data structure.
  """

  @doc """
  Create a new Binary Search Tree with root's value as the given 'key'

  ## Examples

      iex> BST.new(5)
      %{key: 5, left: nil, right: nil, parent: nil}
      
  """
  def new(key), do: %{key: key, left: nil, right: nil, parent: nil}

  def search(subtree, searched_key) do
    cond do
      subtree == nil || searched_key == subtree[:key] -> subtree
      searched_key < subtree[:key] -> search(subtree.left, searched_key)
      nil -> search(subtree.right, searched_key)
    end
  end

  # A lack of tree, create a new one
  def insert(nil, new_key), do: new(new_key)
  def insert(%{key: k} = tree, new_key) when new_key < k, do: update_in(tree[:left], &insert(&1, new_key))
  def insert(tree, new_key), do: update_in(tree[:right], &insert(&1, new_key))

end
