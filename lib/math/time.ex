defmodule Time do
  @moduledoc """
  Documentation for `Time` module.
  """

  @doc """
  Converts seconds to miliseconds (integer)

  ## Examples

      iex> Time.sec_to_ms(1)
      1000

  """
  def sec_to_ms(sec) do
    sec * 1000
  end

  @doc """
  Converts miliseconds to seconds (float)

  ## Examples

      iex> Time.ms_to_sec(1000)
      1.0

  """
  def ms_to_sec(ms) do
    ms / 1000
  end

  @doc """
  Converts HH:MM:SS time type to seconds (integer)

  ## Examples

      iex> Time.hms_to_sec("0:1:10")
      70

  """
  def hms_to_sec(hms) do
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
  def hms_to_ms(hms) do
    hms_to_sec(hms) * 1000
  end

  @doc """
  Converts miliseconds to HHMMSS format

  ## Examples

      iex> Time.ms_to_hms(28565000)
      "07:56:05"

      iex> Time.ms_to_hms(1000)
      "00:00:01"

      iex> Time.ms_to_hms(1000, "-")
      "00-00-01"

      iex> Time.ms_to_hms(61000)
      "00:01:01"
      
  """
  def ms_to_hms(ms, separator \\ ":") do
    hours = Integer.to_string(Integer.floor_div(Integer.floor_div(ms, 1000), 3600))
    ms_modulo = rem(Integer.floor_div(ms, 1000), 3600)
    minutes = Integer.to_string(Integer.floor_div(ms_modulo, 60))
    seconds = Integer.to_string(rem(ms_modulo, 60))

    hh = String.pad_leading(hours, 2, "0")
    mm = String.pad_leading(minutes, 2, "0")
    ss = String.pad_leading(seconds, 2, "0")
    
    "#{hh}#{separator}#{mm}#{separator}#{ss}"
  end

  @doc """
  Converts seconds to HHMMSS format

  ## Examples

      iex> Time.sec_to_hms(28565)
      "07:56:05"

      iex> Time.sec_to_hms(28565, "-")
      "07-56-05"

      iex> Time.sec_to_hms(1)
      "00:00:01"

      iex> Time.sec_to_hms(61)
      "00:01:01"
      
  """
  def sec_to_hms(sec, separator \\ ":"), do: ms_to_hms(sec*1000, separator)

end
