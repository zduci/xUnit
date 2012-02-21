require './test_case'
class WasRun < TestCase 
  attr_reader :log
  def set_up
    @log = 'set_up ' 
  end

  def test_successful_method 
    @log = @log + "was_run "
  end

  def test_failing_method
    raise 
  end
  def tear_down
    @log = @log + 'tear_down '
  end
end
