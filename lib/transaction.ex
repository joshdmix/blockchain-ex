defmodule Transaction do
  defstruct [:amount, :fromAddress, :toAddress, :timestamp]

  @doc "Build a new transaction for amount and addresses"
  def new(amount, fromAddress, toAddress) do
    %Transaction{
      amount: amount,
      fromAddress: fromAddress,
      toAddress: toAddress,
      timestamp: NaiveDateTime.utc_now()
    }
  end
end
