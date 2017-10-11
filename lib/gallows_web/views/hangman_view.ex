defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  import GallowsWeb.Views.Helpers.GameStateHelper

  def turn(left, target) when target >= left, do: ""
  def turn(left, target), do: "faint"

  def game_over?(%{ game_state: game_state }) do
    game_state in [ :won, :lost ]
  end

  def new_game_button(conn) do
    button("New Game", to: hangman_path(conn, :create_game))
  end
end
