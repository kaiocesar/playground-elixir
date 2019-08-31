defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "greets the world" do
    assert Cards.hello() == "Qualquer coisa"
  end

  test "my deck" do
    assert Cards.create_deck() == ["Ace", "Two", "Three"]
  end

  test "shuffle my deck" do
    assert Cards.shuffle(["Ace", "Two", "Three"]) == ["Ace", "Three", "Two"]
  end


  test "my deck contains" do
    assert Cards.contains(["Ace", "Two", "Three"], "Two")
  end

end
