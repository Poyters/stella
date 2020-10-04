defmodule NumberTest do
  use ExUnit.Case
  doctest Number

  test "1 is power of 1" do
    assert Number.is_power(1, 1) == true
  end

  test "1 is not power of 10" do
    assert Number.is_power(10, 1) == false
  end

  test "2 is power of 2" do
    assert Number.is_power(2, 2) == true
  end

  test "2 is power of 16" do
    assert Number.is_power(16, 2) == true
  end

  test "2 is not a power of 15" do
    assert Number.is_power(15, 2) == false
  end

  test "2 is not a power of 32" do
    assert Number.is_power(32, 2) == true
  end

  test "2 is not a power of 256" do
    assert Number.is_power(256, 2) == true
  end

  test "10 is not a power of 100000000000" do
    assert Number.is_power(100000000000, 10) == true
  end

  test "clamp larger" do
    assert Number.clamp(10, 1, 2) == 2
  end

  test "clamp smaller" do
    assert Number.clamp(-1, 1, 2) == 1
  end

  test "clamp inside" do
    assert Number.clamp(2, 1, 3) == 2
  end

  test "clamp equal to min" do
    assert Number.clamp(1, 1, 3) == 1
  end

  test "clamp equal to max" do
    assert Number.clamp(3, 1, 3) == 3
  end
end
