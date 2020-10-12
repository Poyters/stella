defmodule CountingsortTest do
  use ExUnit.Case
  doctest Countingsort

  test "sort list; 1" do
    assert Countingsort.run([5, 5, 1, 0])
      === [0, 1, 5, 5]
  end

  test "empty list" do
    assert Countingsort.run([])
      === []
  end

  test "sort list; 2" do
    assert Countingsort.run([-20,1,-2,-3,2,1,-5,5,1,1,5,4,5,9,84,-5, -7])
      === [-20, -7, -5, -5, -3, -2, 1, 1, 1, 1, 2, 4, 5, 5, 5, 9, 84]
  end

  test "sort list; 3" do
    assert Countingsort.run([5, 5, 1, 0, -20, 2, 0, 0, 9, 10])
      === [-20, 0, 0, 0, 1, 2, 5, 5, 9, 10]
  end

end