defmodule HeapsortTest do
  use ExUnit.Case
  doctest Heapsort

  test "get parent index of element" do
    assert Heapsort.parent(6) == 3
  end

  test "get left index of element" do
    assert Heapsort.left(6) == 12
  end

  test "get right index of element" do
    assert Heapsort.right(6) == 13
  end
end
