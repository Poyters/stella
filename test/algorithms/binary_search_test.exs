defmodule BinarySearchTest do
  use ExUnit.Case
  doctest Binary

  test "find index of element, 1" do
    assert Binary.search([1, 2], 1)
      === 0
  end

  test "find index of element, 2" do
    assert Binary.search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10)
      === 9
  end

  test "find index of element, 3" do
    assert Binary.search([-3, -1, 0, 0.000000001, 3, 4, 5, 7, 8, 9, 10], 10)
      === 10
  end

  test "find index of element, 4" do
    assert Binary.search([-5, -4, 2, 11, 8569, 4151523], -5)
      === 0
  end

  test "find index of element, 5" do
    assert Binary.search([0, 0, 1, 2, 12.1242, 33.444], 33.444)
      === 5
  end

  test "find index of element, 6" do
    assert Binary.search([-5, -4, -3, -1, -1, 0, 1, 2, 3, 3.5, 4, 5, 5.5], 3.5)
      === 9
  end

  test "find index of element, 7" do
    assert Binary.search([1, 2, 3, 4], 4)
      === 3
  end

  test "find index of element, 8" do
    assert Binary.search([0,1,4,5,6,7,8,9,12,26,45,67,78,90,98,123,211,234,456,769,865,2345,3215,14345,24324], 0)
      === 0
  end

  test "find index of element, 9" do
    assert Binary.search([0, 1, 2, 3, 4], 0)
      === 0
  end

  test "find index of element, 10" do
    assert Binary.search([0, 0, 0, 0, 1, 2, 3, 4], 0)
      === 3
  end

  test "find index of element, not found 1" do
    assert Binary.search([3.00000001, 21, 3.0123456789001, 3, 3, 3, 5, -8959.65, -5, 7, 8, 9, 10], 123)
      === :not_found
  end

  test "find index of element, not found 2" do
    assert Binary.search([], 123)
      === :not_found
  end

  test "find index of element, not found 3" do
    assert Binary.search([], 9593)
      === :not_found
  end

  test "find index of element, not found 4" do
    assert Binary.search([0, 1, 2, 3, 4], "1231")
      === :not_found
  end
end