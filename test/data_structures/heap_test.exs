defmodule HeapTest do
  use ExUnit.Case
  doctest Heap

  test "check if heap is empty 1" do
    assert Heap.empty?([]) == true
  end

  test "check if heap is empty 2" do
    assert Heap.empty?([1, 2]) == false
  end

  test "is member 1" do
    assert Heap.member?([1, 2], 1) == true
  end

  test "is member 2" do
    assert Heap.member?([1, 2], 3) == false
  end

  test "is member 3" do
    assert Heap.member?([1, -12], -2) == false
  end

  test "is member 4" do
    assert Heap.member?([1, -2], -2) == true
  end

  test "is member 5" do
    assert Heap.member?([1, 2, 5, 2, 0, -3, 5], 95235) == false
  end

  test "get root 1" do
    assert Heap.root([16, 14, 10, 8, 7, 9, 3, 2, 4, 1]) == 16
  end

  test "get root 2" do
    assert Heap.root([44, 35, 42, 33, 31, 19, 27, 10, 26, 14])  == 44
  end

  test "get root 3" do
    assert Heap.root([15, 10, 12, 8, 10, 3]) == 15
  end

  test "get parent index of element" do
    assert Heap.parent(6) == 2
  end

  test "get left index of element 1" do
    assert Heap.left(3) == 7
  end

  test "get left index of element 2" do
    assert Heap.left(0) == 1
  end

  test "get left index of element 3" do
    assert Heap.left(2) == 5
  end

  test "get left index of element 4" do
    assert Heap.left(1) == 3
  end

  test "get right index of element 1" do
    assert Heap.right(1) == 4
  end

  test "get right index of element 2" do
    assert Heap.right(0) == 2
  end

  test "get right index of element 3" do
    assert Heap.right(3) == 8
  end

  test "get right index of element 4" do
    assert Heap.right(4) == 10
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

  test "build max heap 3" do
    assert Heap.build_heap([10, 15, 3, 8, 10, 12], :max)
    == [15, 10, 12, 8, 10, 3]
  end

  test "build min heap" do
    assert Heap.build_heap([4, 1, 3, 2, 16, 9, 10, 14, 8, 7], :min)
    == [1, 2, 3, 4, 7, 9, 10, 14, 8, 16]
  end

  test "build min heap 4" do
    assert Heap.build_heap([10, 15, 3, 8, 10, 12], :min)
    == [3, 8, 10, 15, 10, 12]
  end

  test "sort 1" do
    assert Heap.sort([1])
    == [1]
  end

  test "sort 2" do
    assert Heap.sort([1, 2])
    == [1, 2]
  end

  test "sort 3" do
    assert Heap.sort([1, 2, 3])
    == [1, 2, 3]
  end

  test "sort 4" do
    assert Heap.sort([3, 2, 1])
    == [1, 2, 3]
  end

  test "sort 5" do
    assert Heap.sort([4, 1, 3, 2, 16, 9, 10, 14, 8, 7])
    == [1, 2, 3, 4, 7, 8, 9, 10, 14, 16]
  end

  test "sort 6" do
    assert Heap.sort([10, 15, 3, 8, 10, 12])
    == [3, 8, 10, 10, 12, 15]
  end

  test "sort 7" do
    assert Heap.sort([35, 33, 42, 10, 14, 19, 27, 44, 26, 31])
    == [10, 14, 19, 26, 27, 31, 33, 35, 42, 44]
  end

  test "sort 9" do
    assert Heap.sort([2, 1, 6, 7, 3])
      === [1, 2, 3, 6, 7]
  end

  test "sort 10" do
    assert Heap.sort([2, 1])
      === [1, 2]
  end

  test "sort 11" do
    assert Heap.sort([10, -22, 4, 0, 0, 1, 2, 1, -3, 6, 7, 3])
      === [-22, -3, 0, 0, 1, 1, 2, 3, 4, 6, 7, 10]
  end

  test "sort 12" do
    assert  Heap.sort([5, 5, 1, 0])
      === [0, 1, 5, 5]
  end

  test "sort 13" do
    assert  Heap.sort([-20,1,-2,-3,2,1,-5,5,1,1,5,4,5,9,84,-5, -7])
      === [-20, -7, -5, -5, -3, -2, 1, 1, 1, 1, 2, 4, 5, 5, 5, 9, 84]
  end

  test "sort 14" do
    assert  Heap.sort([5, 5, 1, 0, -20, 2, 0, 0, 9, 10])
      === [-20, 0, 0, 0, 1, 2, 5, 5, 9, 10]
  end

end
