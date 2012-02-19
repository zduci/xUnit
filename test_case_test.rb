require './was_run'
class TestCaseTest < TestCase
  def test_template
    @test = WasRun.new :test_method
    @test.run
    raise unless @test.log == 'set_up was_run tear_down '
  end
end

TestCaseTest.new(:test_template).run
