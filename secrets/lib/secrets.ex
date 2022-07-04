defmodule Secrets do

  def secret_add(secret), do: (secret + secret)

  def secret_subtract(secret), do: (secret - secret)

  def secret_multiply(secret), do: (secret * secret)

  @spec secret_divide(number) :: float
  def secret_divide(secret), do: (div / secret)

end
