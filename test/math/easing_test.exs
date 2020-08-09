defmodule EasingTest do
  use ExUnit.Case
  doctest Easing

  test "linear tween" do
    assert Easing.linear_tween(2, 3, 4, 5) == 4.6
  end

  test "ease in quad" do
    assert Easing.ease_in_quad(2, 3, 4, 5) == 3.64
  end

  test "ease out quad" do
    assert Easing.ease_out_quad(2, 3, 4, 5) == 3
  end

  test "ease in out quad" do
    assert Easing.ease_in_out_quad(2, 3, 4, 5) == 4.12
  end

  test "ease in cubic" do
    assert Easing.ease_in_cubic(2, 3, 4, 5) == 3.2560000000000002
  end

  test "ease out cubic" do
    assert Easing.ease_out_cubic(2, 3, 4, 5) == 6.136
  end

  test "ease in out cubic" do
    assert Easing.ease_in_out_cubic(2, 3, 4, 5) == 4.024
  end

  test "ease in quart" do
    assert Easing.ease_in_quart(2, 3, 4, 5) == 3.1024
  end

  test "ease out quart" do
    assert Easing.ease_out_quart(2, 3, 4, 5) == 6.4816
  end

  test "ease in out quart" do
    assert Easing.ease_in_out_quart(2, 3, 4, 5) == 3.6553600000000004
  end
end
