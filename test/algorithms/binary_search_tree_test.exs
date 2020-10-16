defmodule BSTTest do
  use ExUnit.Case
  doctest BST

  test "Create a new BST" do
    assert BST.new(5)
      === %{key: 5, left: nil, right: nil, parent: nil}
  end

  test "Find root 1" do
    assert BST.search(%{
      key: 5, 
      left: %{key: 2, left: nil, right: nil, parent: nil},
      right: nil,
      parent: nil
      }, 5)
    === %{
      key: 5, 
      left: %{key: 2, left: nil, right: nil, parent: nil},
      right: nil,
      parent: nil
    }
  end

  test "Find node 1" do
    assert BST.search(%{
      key: 5, 
      left: %{key: 2, left: nil, right: nil, parent: nil},
      right: nil,
      parent: nil
      }, 2)
    === %{key: 2, left: nil, right: nil, parent: nil}
  end

  test "Insert key to empty" do
    assert BST.insert(nil, 2)
    === %{key: 2, left: nil, right: nil, parent: nil}
  end

  test "Insert key to empty 1" do
    assert BST.insert(nil, 2) |> BST.insert(1) |> BST.insert(3)
    === %{
      key: 2,
      left: %{key: 1, left: nil, right: nil, parent: nil},
      right: %{key: 3, left: nil, right: nil, parent: nil},
      parent: nil
    }
  end
end