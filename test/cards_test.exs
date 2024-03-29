defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "my deck" do
    deck = ["Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades",
    "Five of Spades", "Ace of Clubs", "Two of Clubs", "Three of Clubs",
    "Four of Clubs", "Five of Clubs", "Ace of Hearts", "Two of Hearts",
    "Three of Hearts", "Four of Hearts", "Five of Hearts", "Ace of Diamonds",
    "Two of Diamonds", "Three of Diamonds", "Four of Diamonds", "Five of Diamonds"]
    assert Cards.create_deck() == deck
  end

  test "shuffle my deck" do
    assert Cards.shuffle(["Ace", "Two", "Three"]) == ["Ace", "Three", "Two"]
  end


  test "my deck contains" do
    deck = Cards.create_card
    assert Cards.contains?(deck, "Two") == false
  end

end
