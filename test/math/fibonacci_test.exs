defmodule FibonacciTest do
  use ExUnit.Case
  doctest Fibonacci

  test "Fibonacci sequence; 0" do
    assert Fibonacci.sequence(0) == 0
  end

  test "Fibonacci sequence; 1" do
    assert Fibonacci.sequence(1) == 1
  end

  test "Fibonacci sequence; 2" do
    assert Fibonacci.sequence(2) == 1
  end

  test "Fibonacci sequence; 3" do
    assert Fibonacci.sequence(3) == 2
  end

  test "Fibonacci sequence; 4" do
    assert Fibonacci.sequence(4) == 3
  end

  test "Fibonacci sequence; 5" do
    assert Fibonacci.sequence(5) == 5
  end

  test "Fibonacci sequence; 6" do
    assert Fibonacci.sequence(6) == 8
  end

  test "Fibonacci sequence; 7" do
    assert Fibonacci.sequence(7) == 13
  end

  test "Fibonacci sequence; 8" do
    assert Fibonacci.sequence(8) == 21
  end

  test "Fibonacci sequence; 9" do
    assert Fibonacci.sequence(9) == 34
  end

  test "Fibonacci sequence; 10" do
    assert Fibonacci.sequence(10) == 55
  end

  test "Fibonacci sequence; 11" do
    assert Fibonacci.sequence(11) == 89
  end

  test "Fibonacci sequence; 12" do
    assert Fibonacci.sequence(12) == 144
  end

  test "Fibonacci sequence; 13" do
    assert Fibonacci.sequence(13) == 233
  end

  test "Fibonacci sequence; 14" do
    assert Fibonacci.sequence(14) == 377
  end

  test "Fibonacci sequence; 15" do
    assert Fibonacci.sequence(15) == 610
  end

  test "Fibonacci sequence; 17" do
    assert Fibonacci.sequence(17) == 1597
  end

  test "Fibonacci sequence; 18" do
    assert Fibonacci.sequence(18) == 2584
  end

  test "Fibonacci sequence; 19" do
    assert Fibonacci.sequence(19) == 4181
  end

  test "Fibonacci sequence; 20" do
    assert Fibonacci.sequence(20) == 6765
  end
end