class TestResult
  def initialize
    @run_count = 0 
    @failed_count = 0
  end

  def test_started
    @run_count = @run_count + 1
  end

  def test_failed
    @failed_count = @failed_count + 1
  end

  def summary
    "#{@run_count} run, #{@failed_count} failed"
  end
end
