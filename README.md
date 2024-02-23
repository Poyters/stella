<p align="center">
    <img src="assets/images/stella.png" />
<p>

# Stella

Rapid Elixir library providing implementations of the most famous algorithms, data structures and math functions. Key features of this library are:

- a high test coverage (near to 100%)
- good quality documentation with examples of usage to each function
- featured complexity of each action

## Installation

The package can be installed by adding `stella` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:stella, "~> 0.7.1"}
  ]
end
```

Link to hex package: https://hex.pm/packages/stella

## Documentation

Generated with ExDoc: https://hexdocs.pm/stella/Stella.html

## Content of version 0.7.0

### Math

- [x] Cartesian
- [x] Easing functions
- [x] Isometric
- [x] Common number operations like clamp, nearly equal, is power etc
- [x] Time converter (hms, sec, ms etc)
- [x] Vector 2D
- [x] Vector 3D
- [x] Ackermann function
- [x] Fibonacci sequence
- [x] Math intervals

### Algorithms

- [x] Quick sort
- [x] Counting sort
- [x] Insertion sort
- [x] Binary search
- [x] Bubble sort

### Data structures

- [x] Queue
- [x] Stack
- [x] Priority queue
- [x] Struct, converting a nested Struct to a nested Map
- [x] Heap with heapsort

## Contributing

We appreciate any contribution to `Stella`. You will need to have installed the newest versions of Elixir and Erlang at your machine. Then, follow the steps bellow:

1.  Install project dependencies

    ```bash
    $ mix deps.get
    ```

2.  Watch tests

    ```bash
    $ mix test.watch
    ```
