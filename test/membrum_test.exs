defmodule MembrumTest do
  use ExUnit.Case
  doctest Membrum

  test "greets the world" do
    assert Membrum.hello() == :world
  end
end
