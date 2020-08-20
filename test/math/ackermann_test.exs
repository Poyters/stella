defmodule AckermannTest do
  use ExUnit.Case
  doctest Ackermann

  test "one repeat" do
    assert Ackermann.ack(0, 1) === 2
  end

  test "one repeat 2" do
    assert Ackermann.ack(2, 8) === 19
  end

  test "3;5 repeats" do
    assert Ackermann.ack(3, 5) === 253
  end

end