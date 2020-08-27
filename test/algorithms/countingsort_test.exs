defmodule CountingsortTest do
  use ExUnit.Case
  doctest Countingsort

  test "sort list; 1" do
    assert Countingsort.sort([5, 5, 1, 0])
      === [0, 1, 5, 5]
  end

  test "empty list" do
    assert Countingsort.sort([])
      === []
  end

  test "sort list; 2" do
    assert Countingsort.sort([-931,1,-2,-3,2,1,-5,5,1,1,5,4,5,9,84,-5, -7])
      === [-931, -7, -5, -5, -3, -2, 1, 1, 1, 1, 2, 4, 5, 5, 5, 9, 84]
  end

  test "sort list; 3" do
    assert Countingsort.sort([5, 5, 1, 0, -20, 2, 0, 0, 9, 59135])
      === [-20, 0, 0, 0, 1, 2, 5, 5, 9, 59135]
  end

end