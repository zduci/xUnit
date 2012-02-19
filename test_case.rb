class TestCase
  attr_accessor :was_set_up
  def initialize(method_name)
    @method_name = method_name
  end

  def set_up
  end

  def run 
    self.set_up
    self.send(@method_name) 
  end
end
