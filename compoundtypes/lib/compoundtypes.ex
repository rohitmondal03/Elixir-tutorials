defmodule Compoundtypes do
  use Application

  def start(_type, _args) do
    # Compoundtypes.main()
    # Compoundtypes.timeTillNewYear()
    Compoundtypes.tuples()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    # Date and Time
    time = Time.new!(14, 45, 0, 5)
    date = Date.new!(2025, 6, 4)
    date_time = DateTime.new!(date, time, "Etc/UTC")
    IO.inspect(time)
    IO.inspect(date)
    IO.inspect(date_time)
    IO.puts(date_time.year)
  end

  def timeTillNewYear do
    new_year_time = DateTime.new!(Date.new!(2025, 1, 1), Time.new!(0, 0, 0, 0), "Etc/UTC")
    time_diff = DateTime.diff(new_year_time, DateTime.utc_now())
    IO.puts(time_diff)

    days_left = div(time_diff, 86_400)
    IO.puts(days_left)
    hours_left = div(rem(time_diff, 86_400), 60 * 60)
    IO.puts(hours_left)
    mins_left = div(rem(time_diff, 60 * 60), 60)
    IO.puts(mins_left)
    secs_left = rem(time_diff, 60)
    IO.puts(secs_left)

    IO.puts(
      "Time until new year #{days_left} days, #{hours_left} hours, #{mins_left} minutes and #{secs_left} seconds"
    )
  end

  def tuples do
    names = {:rohit, :ritik}
    names = Tuple.append(names, :rakesh)
    IO.inspect(names)
    IO.puts("0th index is #{elem(names, 0)}")

    prices = {1, 55, 10}
    avg = Tuple.sum(prices) / tuple_size(prices)
    IO.puts(avg)

    # destructuring
    user = {"Rohit", 21}
    {name, age} = user
    IO.puts("#{name}'s age is #{age}")
  end
end
