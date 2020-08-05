defmodule Time do
  @moduledoc """
  Documentation for `Time`.
  """

  @doc """
  Converts seconds to miliseconds (integer)

  ## Examples
    iex> Time.sec_to_ms(1)
    1000
  """
  def sec_to_ms (sec) do
    sec * 1000
  end

  @doc """
  Converts miliseconds to seconds (float)

  ## Examples
    iex> Time.ms_to_sec(1000)
    1.0
  """
  def ms_to_sec (ms) do
    ms / 1000
  end

  @doc """
  Converts HH:MM:SS time type to seconds (integer)

  ## Examples
    iex> Time.hms_to_sec("0:1:10")
    70
  """
  def hms_to_sec (hms) do
    items = hms 
      |> String.split(":")
      |> Enum.map(&String.to_integer/1)

    (Enum.at(items, 0) * 60 * 60) + (Enum.at(items, 1) * 60) + Enum.at(items, 2)
  end

  @doc """
  Converts HH:MM:SS time type to seconds (integer)

  ## Examples
    iex> Time.hms_to_ms("0:1:10")
    70000
  """
  def hms_to_ms (hms) do
    hms_to_sec(hms) * 1000
  end
end
