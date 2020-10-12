defmodule InsertionsortTest do
  use ExUnit.Case
  doctest Insertionsort

  test "sort empty list" do
    assert Insertionsort.run([]) === []
  end

  test "sort list 1" do
    assert Insertionsort.run([-2, -3, 4, 5]) === [-3, -2, 4, 5]
  end

  test "sort list 2" do
    assert Insertionsort.run([-2.11, -3.4, 4.0, 15]) === [-3.4, -2.11, 4.0, 15]
  end

end