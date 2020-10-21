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
  def new(key, partner_key \\ nil), do: %{key: key, left: nil, right: nil, parent: partner_key}

  @doc """
  Search a specific node by given searched_key in given subtree (or a whole tree)
   - Average time complexity: O(log n)
   - Worst time complexity: O(n)

  ## Examples

      iex> BST.insert(nil, 2)
      %{key: 2, left: nil, right: nil, parent: nil}
      
  """
  def search(subtree, searched_key) do
    cond do
      subtree == nil || searched_key == subtree.key -> subtree
      searched_key < subtree.key -> search(subtree.left, searched_key)
      true -> search(subtree.right, searched_key)
    end
  end

  @doc """
  Insert a new node to the given tree.
   - Average time complexity: O(log n)
   - Worst time complexity:	O(n)

  ## Examples

      iex> BST.insert(nil, 2)
      %{key: 2, left: nil, right: nil, parent: nil}
      
  """
  def insert(nil, new_key), do: new(new_key)
  def insert(%{key: k} = tree, new_key) when new_key < k, do: update_in(tree.left, &insert_priv(&1, new_key, tree.key))
  def insert(tree, new_key), do: update_in(tree.right, &insert_priv(&1, new_key, tree.key))
  defp insert_priv(nil, new_key, parent_key), do: new(new_key, parent_key)

  @doc """
  Returns a minimum node of a given subtree

  ## Examples

      iex> BST.insert(nil, 2) |> BST.insert(5) |> BST.insert(1) |> BST.minimum
      %{key: 1, left: nil, right: nil, parent: 2}
      
  """
  def minimum(subtree) do
    if subtree.left == nil, do: subtree, else: minimum(subtree.left)
  end

  @doc """
  Returns a maximum node of a given subtree

  ## Examples

      iex> BST.insert(nil, 2) |> BST.insert(5) |> BST.insert(1) |> BST.maximum
      %{key: 5, left: nil, right: nil, parent: 2}
      
  """
  def maximum(subtree) do
    if subtree.right == nil, do: subtree, else: maximum(subtree.right)
  end
end
