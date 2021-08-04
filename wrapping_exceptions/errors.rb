require 'bundler/setup'
require 'stripe'

module MPay
  class Error < StandardError
  end
end

# raise MaxPay::Error, "You had an error"

def charge(amount)
  # xyz
  begin
    raise Stripe::StripeError, "There was an issue with the destination account"
  rescue => exception
    raise MPay::Error, exception
    binding.irb
  end
end

# begin
#   charge(0)
# rescue => exception
#   binding.irb
# end

# The error we now get is a "MPay" that abstracts the StripeError
# We get a "cause" that get's built out by ruby automatically when we do MPay::Error, exception
# We can also get the message from exception.message
# So now we can do this for other service providers (e.g. Braintree, etc) and have to worry about only one type of error - MPay::Error
  # When something goes wrong, we can let the API client only worry about the MPay::Error
