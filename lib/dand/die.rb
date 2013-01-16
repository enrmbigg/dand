require_relative 'auditable'
module Dand
class Die
	include Auditable
  attr_reader :number
  
  def initialize
    roll
  end
  
  def roll
    @number = rand(1..6)
  end
end
end