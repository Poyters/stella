defmodule QueueTest do
  use ExUnit.Case
  doctest Queue


  test "create new queue" do
    assert Queue.new() == %{}
  end

end
