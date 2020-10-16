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
    assert BST.insert(nil, 2) |> BST.insert(1)
    === %{
      key: 2,
      left: %{
        key: 1,
        parent: 2,
        right: nil,
        left: nil
      },
      right: nil,
      parent: nil
    }
  end

  test "Get minimum 1" do
    assert BST.insert(nil, 2) |> BST.insert(1) |> BST.insert(3) |> BST.minimum
    === %{key: 1, left: nil, parent: 2, right: nil}
  end

  test "Get minimum 2" do
    assert BST.insert(nil, 2) |> BST.minimum
    === %{key: 2, left: nil, parent: nil, right: nil}
  end

  test "Get maximum 1" do
    assert BST.insert(nil, 2) |> BST.insert(1) |> BST.insert(3) |> BST.maximum
    === %{key: 3, left: nil, parent: 2, right: nil}
  end

  test "Get maximum 2" do
    assert BST.insert(nil, 2) |> BST.maximum
    === %{key: 2, left: nil, parent: nil, right: nil}
  end
end