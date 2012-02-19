require './test_case'
class WasRun < TestCase 
  attr_accessor :log
  def set_up
    @log = 'set_up ' 
  end

  def test_method
    @log = @log + "was_run "
  end

  def tear_down
    @log = @log + 'tear_down '
  end
end
