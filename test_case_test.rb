require './was_run'
class TestCaseTest < TestCase
  test = WasRun.new :test_method
  raise if test.was_run
  test.run
  raise unless test.was_run
end
