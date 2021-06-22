defmodule IntervalTest do
  use ExUnit.Case
  doctest Interval

  test "check if is in range 1" do
    assert Interval.member?(1, 2, 1) == true
  end

  test "check if is in range 2" do
    assert Interval.member?(1, 1, 1) == true
  end

  test "check if is in range 3" do
    assert Interval.member?(1, 2, 2.1) == false
  end

  test "check if is in range 4" do
    assert Interval.member?(1, 2, 2.01) == false
  end

  test "check if is in range 5" do
    assert Interval.member?(1, 2, 2.001) == false
  end

  test "check if is in range 6" do
    assert Interval.member?(1, 2, 2.0001) == false
  end

  test "check if is in range 7" do
    assert Interval.member?(1, 2, 2.00001) == false
  end

  test "check if is in range 8" do
    assert Interval.member?(1, 2, 2.0000001) == false
  end

  test "check if is in range 9" do
    assert Interval.member?(1, 2, 2.000000001) == false
  end

  test "check if is in range 10" do
    assert Interval.member?(1, 2, 2.00000000001) == false
  end

  test "check if is in range 11" do
    assert Interval.member?(1, 2, 2.0000000000001) == false
  end

  test "check if is in range 12" do
    assert Interval.member?(1, 2, 2.000000000000001) == false
  end

  test "check if is in range 13" do
    assert Interval.member?(1, 2.000000000000001, 2) == true
  end

  test "check if is in range 14" do
    assert Interval.member?(1, 2.000000000000001, 2) == true
  end

  test "check if is in range 15" do
    assert Interval.member?(1.000000000000001, 2.000000000000001, 1) == false
  end

  test "wrong interval 1" do
    assert Interval.member?(2, 1, 0) == nil
  end

  test "wrong interval 2" do
    assert Interval.member?(1.000000000000001, 1, 0) == nil
  end

  test "wrong interval 3" do
    assert Interval.member?(-5, -6, 0) == nil
  end

end
