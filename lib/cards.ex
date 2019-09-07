defmodule Cards do
  @moduledoc """
  Documentation for Cards.
  """

  @doc """
  Cards

  ## Cards endpoints
      iex> Cards.create_deck
      ["Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades",
        "Five of Spades", "Ace of Clubs", "Two of Clubs", "Three of Clubs",
        "Four of Clubs", "Five of Clubs", "Ace of Hearts", "Two of Hearts",
        "Three of Hearts", "Four of Hearts", "Five of Hearts", "Ace of Diamonds",
        "Two of Diamonds", "Three of Diamonds", "Four of Diamonds", "Five of Diamonds"]

  """
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    for suit <- suits do
      Enum.map(values, fn value -> "#{value} of #{suit}" end)
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
  def deal(deck, hand_size) do
    #retorna uma tupla
    Enum.split(deck, hand_size)
  end


  def save(deck, filename) do
    # Cards.save(deck, "my_deck")
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    # Cards.load("my_deck")
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _reason} -> "That file does not exists"
    end
  end

  def create_hand(hand_size) do
    # Cards.create_hand(5)
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)

  end

end
