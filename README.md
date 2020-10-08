# Stella

Rapid elixir library providing implementations of the most famous algorithms, data structures and math functions. Key features of this library are:
- a high test coverage (near to 100%)
- good quality documentation with examples of usage to each function
- featured complexity of each action

## Installation

The package can be installed by adding `stella` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:stella, "~> 0.4.0"}
  ]
end
```

Link to hex package: https://hex.pm/packages/stella

## Documentation
Generated with ExDoc: https://hexdocs.pm/stella/Stella.html


## Content of version 0.4.0 (planned November 2020)

### Math
- [x] Cartesian
- [x] Easing functions
- [x] Isometric
- [x] Common number operations like cplam, nearly equal, is power etc
- [x] Time converter
- [x] Vector 2D
- [x] Vector 3D
- [x] Ackermann function
- [x] Fibonacci sequence
 

### Algorithms
- [x] Quick sort
- [x] Counting sort
- [ ] Bucket sort
- [x] Binary search


### Data structures
- [x] Queue
- [x] Stack
- [x] Max and Min Heap
- [x] Priority queue
- [ ] Binary Search Tree
- [ ] Red–black tree


## Changelog

### Version 0.4.0 (unreleased) 
- Stella module can return current version of package
- Add Fibonacci sequence
- Add counting sort
- Add quick sort
- Create clamp method for a Number module that clamps number in min-max range
- Create nearly equal method to Number module that determines whether number is equal to the other by given epsilon
- Add Binary search algorithm



### Version 0.3.1 (23 August 2020)
- Fix Heap documentation examples
- Fix unused variables
- Rename some unit test headers to more appropriate


### Version 0.3.0 (22 August 2020)
- Add Ackermann function
- Create implementation of Quicksort algorithm
- Create implementation of Queue data structure
- Create implementation of Stack data structure
- Add service of cartesian diagram
- Create implementation of two dimensional vector 
- Create implementation of three dimensional vector 
- Add easing functions
- Add service of isometric layout
- Implement max and min heap


### Version 0.2.0 (5 August 2020)
- Add basic number operations
- Create time converter


### Version 0.1.0 (4 August 2020)
- Create initial project package
- Create proof of concept

