class WasRun 
  attr_accessor :was_run
  def initialize(method_name)
    @was_run = 0
    @method_name = method_name
  end
  def test_method
    @was_run = 1
  end
  def run 
    self.send(@method_name) 
  end
end
