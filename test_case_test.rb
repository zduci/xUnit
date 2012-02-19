require './was_run'
class TestCaseTest < TestCase
  def set_up
    @test = WasRun.new :test_method
  end
  def test_running
    @test.run
    raise unless @test.was_run
  end
  def test_set_up
    @test.run
    raise unless @test.was_set_up
  end
end

TestCaseTest.new(:test_running).run
TestCaseTest.new(:test_set_up).run
