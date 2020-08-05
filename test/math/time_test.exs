defmodule TimeTest do
  use ExUnit.Case
  doctest Time

  test "convert seconds to miliseconds" do
    assert Time.secToMs(1) == 1000
  end
end
