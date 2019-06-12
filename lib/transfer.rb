class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?

  end

  def execute_transaction
    #sender and a receiver
    #amount to transfer
    #deduct the amount from the sender and add it to the receiver
    if @sender.status != "open" || @status != "pending"
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    else
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    end

end

  def reverse_transfer
    #reverse a transfer between two accounts
  end


end
