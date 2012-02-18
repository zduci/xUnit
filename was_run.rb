class WasRun 
  attr_accessor :was_run
  def initialize(method_name)
    @was_run = 0
  end
  def test_method
    @was_run = 1
  end
end
