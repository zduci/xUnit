require './test_case'
class WasRun < TestCase 
  attr_accessor :was_run
  def initialize(method_name)
    @was_run = nil 
    super method_name
  end
  def test_method
    @was_run = 1
  end
end
