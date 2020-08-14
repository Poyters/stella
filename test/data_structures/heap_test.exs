defmodule HeapTest do
  use ExUnit.Case
  doctest Heap

  test "get parent index of element" do
    assert Heap.parent(6) == 3
  end

  test "get left index of element" do
    assert Heap.left(6) == 12
  end

  test "get right index of element" do
    assert Heap.right(6) == 13
  end
end
