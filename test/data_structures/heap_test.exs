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
end
