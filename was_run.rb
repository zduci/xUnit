require './test_case'
class WasRun < TestCase 
  attr_accessor :was_run, :was_set_up
  def set_up
    @was_run = nil 
    @was_set_up = 1
  end

  def test_method
    @was_run = 1
  end
end
