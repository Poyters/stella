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

  test "build max heap" do
    assert Heap.build_heap([4, 1, 3, 2, 16, 9, 10, 14, 8, 7], :max)
    == [16, 14, 10, 8, 7, 9, 3, 2, 4, 1]
  end

  test "build max heap 2" do
    assert Heap.build_heap([35, 33, 42, 10, 14, 19, 27, 44, 26, 31], :max)
    == [44, 35, 42, 33, 31, 19, 27, 10, 26, 14]
  end

  test "build min heap" do
    assert Heap.build_heap([4, 1, 3, 2, 16, 9, 10, 14, 8, 7], :min)
    == [1, 2, 3, 4, 7, 9, 10, 14, 8, 16]
  end
end
