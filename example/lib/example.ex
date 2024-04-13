defmodule Example do
  use Application
  alias UUID

  @y 25

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    x= 5
    IO.puts(@y)
    IO.puts(x)

    # ATOMS
    status = Enum.random([:gold, :silver, :bronze])

    # if(status === :gold) do
    #   IO.puts("Welcome to membership !!")
    # else
    #   IO.puts("Not a member !!")
    # end

    case status do
      :gold -> IO.puts("A gold member !")
      :silver -> IO.puts("A silver member !")
      :bronze -> IO.puts("A bronze member !")
      _ -> IO.puts("Nothing !!!")    # default statement
    end


    # String
    IO.puts("This\nis a \n message")
    IO.puts(?b)  # unicode char


    # Number
    num= 1.006 + 44
    IO.puts(is_number(33))
    IO.puts(is_number("a"))
    IO.puts(num)

    IO.puts(Float.ceil(0.375885, 1))   # precision upto "1" digit after decimal

    IO.puts(Integer.gcd(34, 10))
  end
end
