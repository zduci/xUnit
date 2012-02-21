require './was_run'
require './test_suite'
require './test_result'
class TestCaseTest < TestCase
  def set_up
    @result = TestResult.new
  end
  def test_template
    test = WasRun.new(:test_successful_method)
    test.run(@result)
    raise unless test.log == 'set_up was_run tear_down '
  end
  def test_successful_result
    test = WasRun.new(:test_successful_method)
    test.run(@result)
    raise unless @result.summary == '1 run, 0 failed'
  end

  def test_failed_result
    test = WasRun.new(:test_failing_method)
    test.run(@result)
    raise unless @result.summary == '1 run, 1 failed'
  end

  def test_failed_result_formatting
    @result.test_started
    @result.test_failed
    raise unless @result.summary == '1 run, 1 failed'
  end

  def test_suite
    suite = TestSuite.new
    suite.add(WasRun.new :test_successful_method)
    suite.add(WasRun.new :test_failing_method)
    suite.run @result
    raise unless @result.summary == '2 run, 1 failed'
  end
end

suite = TestSuite.new
suite.add TestCaseTest.new(:test_template)
suite.add TestCaseTest.new(:test_suite)
suite.add TestCaseTest.new(:test_failed_result_formatting)
suite.add WasRun.new(:test_successful_method)
suite.add WasRun.new(:test_failing_method)
result = TestResult.new
suite.run(result)
puts result.summary
