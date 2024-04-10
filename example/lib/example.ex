defmodule Example do
  use Application
  alias UUID

  @y 25

  def start(_type, _args) do
    IO.puts(Example.main())
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    x= 5
    IO.puts(@y)
  end
end
