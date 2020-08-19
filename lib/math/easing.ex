defmodule Easing do
  @moduledoc """
  Documentation for `Easing`.

  Signs:
  t - current time (seconds or miliseconds)
  b - start value
  c - change in value
  d - duration (seconds or miliseconds)
  """

  @doc """
  Simple linear tweening - no easing, no acceleration 

  ## Examples

      iex> Easing.linear_tween(1, 2, 3, 4)
      2.75
      
  """

  def linear_tween(t, b, c, d), do: c*t/d + b

  @doc """
  Quadratic easing in - accelerating from zero velocity 

  ## Examples

      iex> Easing.ease_in_quad(1, 2, 3, 4)
      2.1875
      
  """

  def ease_in_quad(t, b, c, d) do
    x = t / d
	  c*x*x + b
  end

  @doc """
  Quadratic easing out - decelerating to zero velocity 

  ## Examples

      iex> Easing.ease_out_quad(1, 2, 3, 4)
      3.3125
      
  """

  def ease_out_quad(t, b, c, d) do
    x = t / d
	  -c * x*(x-2) + b
  end

  @doc """
  Quadratic easing in/out - acceleration until halfway, then deceleration

  ## Examples

      iex> Easing.ease_in_out_quad(1, 2, 3, 4)
      1.625
      
  """

  def ease_in_out_quad(t, b, c, d) do
    x = t / (d / 2)

    if x < 0 do
      c/2*t*t + b
    else
      -c/2 * ((x - 1)*(x - 3) - 1) + b
    end
  end

  @doc """
  Cubic easing in - accelerating from zero velocity 

  ## Examples

      iex> Easing.ease_in_cubic(1, 2, 3, 4)
      2.046875
      
  """

  def ease_in_cubic(t, b, c, d) do
    x = t / d;
    c*x*x*x + b;
  end

  @doc """
  Cubic easing out - decelerating to zero velocity 

  ## Examples

      iex> Easing.ease_out_cubic(1, 2, 3, 4)
      3.734375
      
  """

  def ease_out_cubic(t, b, c, d) do
    x = (t / d) - 1
    c*(x*x*x + 1) + b
  end

  @doc """
  Cubic easing in/out - acceleration until halfway, then deceleration 

  ## Examples

      iex> Easing.ease_in_out_cubic(1, 2, 3, 4)
      2.1875
      
  """

  def ease_in_out_cubic(t, b, c, d) do
    x = t / (d/2)
    if x < 1 do
      c/2*x*x*x + b
    else 
      dec_x = x - 2
      c/2*(dec_x*dec_x*dec_x + 2) + b;
    end
  end

  @doc """
  Quartic easing in - accelerating from zero velocity 

  ## Examples

      iex> Easing.ease_in_quart(1, 2, 3, 4)
      2.01171875
      
  """

  def ease_in_quart(t, b, c, d) do
    x = t / d
	  c*x*x*x*x + b
  end

  @doc """
  Quartic easing out - decelerating to zero velocity 

  ## Examples

      iex> Easing.ease_out_quart(1, 2, 3, 4)
      4.05078125
      
  """

  def ease_out_quart(t, b, c, d) do
    x = (t / d) -1
    -c * (x*x*x*x - 1) + b
  end

  @doc """
  Quintic easing in/out - acceleration until halfway, then deceleration 

  ## Examples

      iex> Easing.ease_in_out_quart(1, 2, 3, 4)
      2.046875
      
  """

  def ease_in_out_quart(t, b, c, d) do
    x = t / (d/2)
    if x < 1 do
      c/2*x*x*x*x*x + b
    else 
      dec_x = x - 2
      c/2*(dec_x*dec_x*dec_x*dec_x*dec_x + 2) + b
    end
  end
end