
class CreditCheck

  attr_reader :number

  def initialize(number = 0)
    @number = number
  end

  def array_input
    # this will put the numbers into an array
    # which helps because I can use indicies to
    # manipulate the array. it then
    # reverses the array like I need it to
    @number.digits
  end

end
