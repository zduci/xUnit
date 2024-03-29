class TestCase
  attr_reader :was_set_up
  def initialize(method_name)
    @method_name = method_name
  end

  def set_up
  end
  
  def tear_down
  end

  def run(result) 
    result.test_started
    self.set_up
    begin
      self.send(@method_name) 
    rescue  
      result.test_failed
    ensure
      self.tear_down
    end
  end
end
