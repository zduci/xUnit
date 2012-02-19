require './was_run'
require './test_result'
class TestCaseTest < TestCase
  def test_template
    @test = WasRun.new :test_successful_method
    @test.run
    raise unless @test.log == 'set_up was_run tear_down '
  end
  def test_successful_result
    test = WasRun.new :test_successful_method
    result = test.run
    raise unless result.summary == '1 run, 0 failed'
  end

  def test_failed_result
    test = WasRun.new :test_failing_method
    result = test.run
    raise unless result.summary == '1 run, 1 failed'
  end

  def test_failed_result_formatting
    result = TestResult.new
    result.test_started
    result.test_failed
    raise unless result.summary == '1 run, 1 failed'
  end
end

TestCaseTest.new(:test_template).run
TestCaseTest.new(:test_successful_result).run
TestCaseTest.new(:test_failed_result_formatting).run
TestCaseTest.new(:test_failed_result).run
