class TestCase
  def initialize(method_name)
    @method_name = method_name
  end

  def run 
    self.send(@method_name) 
  end
end
