def get_element(type, value)
  error = nil
  start = Time.now
  while (Time.now - start) < 30
    begin
      el = $driver.find_element(type, value)
      return el
    rescue StandardError, Net::ReadTimeout => e
      error = e
      p "Retry, #{type}: #{value}"
    end
    sleep(0.1)
  end
  raise "Element #{type}: #{value} was not found. #{e}"
end

def check_if_visible(type, value, timer:10)
  error = nil
  start = Time.now
  while (Time.now - start) < timer
    begin
      el = $driver.find_element(type, value)
      return true
    rescue StandardError, Net::ReadTimeout => e
      error = e
      p "Retry, #{type}: #{value}"
    end
    sleep(0.1)
  end
  return false
end
