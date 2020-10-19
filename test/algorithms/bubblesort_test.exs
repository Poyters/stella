defmodule BubblesortTest do
  use ExUnit.Case
  doctest Bubblesort

  test "sort empty list" do
    assert Bubblesort.run([])
      === []
  end

  test "sort list 1" do
    assert Bubblesort.run([2, 1])
      === [1, 2]
  end

  test "sort list 2" do
    assert Bubblesort.run([2, 1, 6, 7, 3])
      === [1, 2, 3, 6, 7]
  end

  test "sort list 3" do
    assert Bubblesort.run([10, -22, 4, 0, 0, 1, 2, 1, -3, 6, 7, 3])
      === [-22, -3, 0, 0, 1, 1, 2, 3, 4, 6, 7, 10]
  end
end