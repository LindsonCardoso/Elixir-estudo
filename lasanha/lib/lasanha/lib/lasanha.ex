defmodule Lasanha do
  def expected_minutes_in_oven(),
   do: 40

  def remaining_minutes_in_oven(minutos),
   do: expected_minutes_in_oven() - minutos

  def preparation_time_in_minutes(lasagna_layers),
  do:  lasagna_layers * 2

  def total_time_in_minutes(lasagna_layers, minutos),
  do: preparation_time_in_minutes(lasagna_layers) + minutos

  def alarm(), do: "Ding!"

end
