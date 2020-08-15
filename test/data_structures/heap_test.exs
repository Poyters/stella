defmodule HeapTest do
  use ExUnit.Case
  doctest Heap

  test "get parent index of element" do
    assert Heap.parent(6) == 2
  end

  test "get left index of element" do
    assert Heap.left(3) == 7
  end

  test "get right index of element" do
    assert Heap.right(1) == 4
  end

  test "max heapify" do
    assert Heap.max_heapify([16, 4, 10, 14, 7, 9, 3, 2, 8, 1], 1)
    == [16, 14, 10, 8, 7, 9, 3, 2, 4, 1]
  end
end
