defmodule QuicksortTest do
  use ExUnit.Case
  doctest Quicksort

  test "sort list 1" do
    assert Quicksort.sort([1, 2])
      === [1, 2]
  end

  test "sort list 2" do
    assert Quicksort.sort([4, 1, 3, -7, -2, 0, 2])
      === [-7, -2, 0, 1, 2, 3, 4]
  end

  test "sort list 3" do
    assert Quicksort.sort([4, 1, 3, 2, 16, 9, 10, 14, 8, 7])
      === [1, 2, 3, 4, 7, 8, 9, 10, 14, 16]
  end

  test "sort list 4" do
    assert Quicksort.sort([4, 1, 3, 2])
      === [1, 2, 3, 4]
  end

end