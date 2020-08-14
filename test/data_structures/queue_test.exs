defmodule QueueTest do
  use ExUnit.Case
  doctest Queue


  test "create new queue" do
    assert Queue.new() == []
  end

  test "is empty false" do
    assert Queue.is_empty([1, 2]) == :false
  end

  test "is empty true" do
    assert Queue.is_empty([]) == :true
  end

  test "add element to queue, single" do
    assert Queue.enqueue([], 1) == [1]
  end

  test "add element to queue, multiple old" do
    assert Queue.enqueue([1, 2], 3) == [1, 2, 3]
  end

  test "add element to queue, multiple new" do
    assert Queue.enqueue([1, 2], [3, 4]) == [1, 2, 3, 4]
  end

  test "delete element, none" do
    assert Queue.dequeue([]) == []
  end

  test "delete element, one" do
    assert Queue.dequeue([1]) == []
  end

  test "delete element, multiple" do
    assert Queue.dequeue([1, 2, 3]) == [2, 3]
  end

  test "create and push" do
    assert Queue.new() |> Queue.enqueue([1, 2, 3]) == [1, 2, 3]
  end

  test "create, push and pop" do
    assert Queue.new()
      |> Queue.enqueue([1, 2, 3])
      |> Queue.dequeue()
      |> Queue.enqueue(4)
      == [2, 3, 4]
  end

end
