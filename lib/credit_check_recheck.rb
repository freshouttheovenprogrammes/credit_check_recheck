
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

  def new_array
    array_input.map.with_index do |x, i|
      if i % 2 != 0
         x * 2
       else i % 2 == 0
          x
       end
      end
    # and just iterate through the odds
    # if index is odd create new array with x values.
  end


end
