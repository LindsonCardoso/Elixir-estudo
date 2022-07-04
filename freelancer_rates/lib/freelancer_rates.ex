defmodule FreelancerRates do

  def daily_rate(hourly_rate), do: ((hourly_rate * 8)/1)

  def apply_discount(before_discount, discount) do

    value_discount = (before_discount*(discount/100))
    (before_discount - value_discount)


  end

  def monthly_rate(hourly_rate, discount) do

    taxa = (hourly_rate*(discount/100))
    IO.inspect(taxa)
    Float.ceil(taxa)



  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
  end
end
