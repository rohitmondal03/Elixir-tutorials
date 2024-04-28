defmodule GuessGame do
  def start(_type, _args) do
    GuessGame.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main() do
    correct = :rand.uniform(11) - 1
    guess = IO.gets("Guess a number : ") |> String.trim() |> Integer.parse()

    if String.to_integer(guess) === correct do
      IO.puts("You won !!")
    else
      IO.puts("You lose !!")
    end
  end
end
