defmodule Membrum do
  @enforce_keys [:token_expiration, :refresh_token_expiration]
  @doc """
  Membrum base and its settings

  * :token_expiration - Token expiration time in ms (miliseconds)
  * :refresh_token_expiration - Refresh token expiration in ms (miliseconds)
  """
  defstruct [:token_expiration, :refresh_token_expiration]

  @typedoc """
  Membrum base and its settings

  * :token_expiration - Token expiration time in ms (miliseconds)
  * :refresh_token_expiration - Refresh token expiration in ms (miliseconds)
  """
  @type membrum :: %__MODULE__{
    token_expiration: Integer,
    refresh_token_expiration: Integer
  }

  @doc """
  Returns Membrum with application configured settings
  """
  @spec new() :: membrum
  def new() do
    %__MODULE__{
      token_expiration: Application.get_env(:membrum, :token_expiration),
      refresh_token_expiration: Application.get_env(:membrum, :refresh_token_expiration)
    }
  end

  @doc """
  Returns Membrum with passed in settings

  * :token_expiration - Token expiration time in ms (miliseconds)
  * :refresh_token_expiration - Refresh token expiration in ms (miliseconds)
  """
  @spec new(integer, integer) :: membrum
  def new(token_expiration, refresh_token_expiration) when is_integer(token_expiration) and is_integer(refresh_token_expiration) do
    %__MODULE__{
      token_expiration: token_expiration,
      refresh_token_expiration: refresh_token_expiration
    }
  end


end
