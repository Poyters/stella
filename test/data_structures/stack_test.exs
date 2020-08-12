defmodule StackTest do
  use ExUnit.Case
  doctest Stack


  test "check whether stack is empty, yes" do
    assert Stack.is_empty([]) == true
  end

  test "check whether stack is empty, no" do
    assert Stack.is_empty([1, 2]) == false
  end

  test "add element to stack, single" do
    assert Stack.push([], 1) == [1]
  end

  test "add element to stack, multiple old" do
    assert Stack.push([1, 2], 3) == [1, 2, 3]
  end

  test "add element to stack, multiple new" do
    assert Stack.push([1, 2], [3, 4]) == [1, 2, 3, 4]
  end

  test "delete element, none" do
    assert Stack.pop([]) == []
  end

  test "delete element, one" do
    assert Stack.pop([1]) == []
  end

  test "delete element, multiple" do
    assert Stack.pop([1, 2, 3]) == [1, 2]
  end

  test "create and push" do
    assert Stack.new() |> Stack.push([1, 2, 3]) == [1, 2, 3]
  end

  test "create, push and pop" do
    assert Stack.new()
      |> Stack.push([1, 2, 3])
      |> Stack.pop()
      |> Stack.push(4)
       == [1, 2, 4]
  end
end
