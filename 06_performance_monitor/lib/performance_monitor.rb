def measure(number_of_times=1)
  elapsed_times = []
  number_of_times.times do
    time_before = Time.now
    yield
    time_after = Time.now
    elapsed_times << time_after - time_before
  end
  elapsed_times.inject { |sum, num| sum + num } / number_of_times
end
