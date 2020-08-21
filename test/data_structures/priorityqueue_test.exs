defmodule PriorityQueueTest do
  use ExUnit.Case
  doctest PriorityQueue

  test "create a new, empty priority queue" do
    assert PriorityQueue.new === {0, nil}
  end

  test "create a new, intert one element" do
    assert PriorityQueue.new
      |> PriorityQueue.insert(2, "make a bed")
    === {1, {"make a bed", 2, nil, nil}}
  end


  test "create a new, intert a few elements" do
    assert PriorityQueue.new
      |> PriorityQueue.insert(-2, "make a bed")
      |> PriorityQueue.insert("Do homework", 4)
    === {2, {"make a bed", -2, {4, "Do homework", nil, nil}, nil}}
  end

  test "checkout queue size; 0" do
    assert PriorityQueue.new
      |> PriorityQueue.size
    === 0
  end

  test "checkout queue size; 1" do
    assert PriorityQueue.new
      |> PriorityQueue.insert(-2, "make a bed")
      |> PriorityQueue.insert("Do homework", 4)
      |> PriorityQueue.top
      |> PriorityQueue.size
    === 1
  end

  test "checkout queue size; 3" do
    assert PriorityQueue.new
      |> PriorityQueue.insert("make a bed", 2)
      |> PriorityQueue.insert("Do homework", 1)
      |>  PriorityQueue.insert("Cook diner", 3)
      |> PriorityQueue.size
    === 3
  end
end

