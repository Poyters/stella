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

  test "convert queue to list" do
    assert PriorityQueue.new
      |> PriorityQueue.insert("make a bed", 2)
      |> PriorityQueue.insert("Do homework", 1)
      |>  PriorityQueue.insert("Cook diner", 3)
      |> PriorityQueue.to_list
      === [{1, "Do homework"}, {2, "make a bed"}, {3, "Cook diner"}]
  end

  test "get peek element" do
    assert PriorityQueue.new
      |> PriorityQueue.insert("make a bed", 2)
      |> PriorityQueue.insert("Do homework", 1)
      |> PriorityQueue.insert("Cook diner", 1)
      |> PriorityQueue.peek
      === "Cook diner"
  end

  test "is empty, false" do
    assert PriorityQueue.new
      |> PriorityQueue.insert("make a bed", 2)
      |> PriorityQueue.insert("Do homework", 1)
      |> PriorityQueue.insert("Cook diner", 1)
      |> PriorityQueue.is_empty
      === false
  end

  test "is empty, true" do
    assert PriorityQueue.new
      |> PriorityQueue.is_empty
      === true
  end

  test "delete peek element from queue; one, two peeks" do
    assert PriorityQueue.new
      |> PriorityQueue.insert("make a bed", 2)
      |> PriorityQueue.insert("Do homework", 1)
      |> PriorityQueue.insert("Cook diner", 1)
      |> PriorityQueue.top
      === {1, {2, "make a bed", nil, nil}}
  end

  test "delete peek element from queue; one" do
    assert PriorityQueue.new
      |> PriorityQueue.insert("make a bed", 2)
      |> PriorityQueue.insert("Do homework", 3)
      |> PriorityQueue.insert("Cook diner", 1)
      |> PriorityQueue.top
      === {2, {2, "make a bed", nil, {3, "Do homework", nil, nil}}}
  end

  test "delete peek element from queue; multiple" do
    assert PriorityQueue.new
      |> PriorityQueue.insert("make a bed", 2)
      |> PriorityQueue.insert("Do homework", 3)
      |> PriorityQueue.insert("Cook diner", 1)
      |> PriorityQueue.top
      |> PriorityQueue.top
      |> PriorityQueue.insert("once again make a bed", 2)
      === {2, {3, "Do homework", {2, "once again make a bed", nil, nil}, nil}}
  end
end

