defmodule Stella do
  @moduledoc """
  ![print image](assets/images/stella.png)

  Documentation for `Project Stella`.
  Rapid pure elixir library providing implementations of the most
  famous algorithms, data structures and math functions
  """

  @doc """
  Return current stella version

  ## Examples

      iex> Stella.version
      '0.7.1'

  """

  def version, do: Application.spec(:stella, :vsn)
end
