defmodule PriorityQueueTest do
  use ExUnit.Case
  doctest PriorityQueue

  test "create a new, empty priority eueue" do
    assert PriorityQueue.new() == {0, nil}
  end
end