defmodule WebTestTest do
  use ExUnit.Case
  doctest WebTest

  test "greets the world" do
    assert WebTest.hello() == :world
  end
end
