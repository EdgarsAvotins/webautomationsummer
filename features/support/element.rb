def get_element (type, value)
  error = nil
  start = Time.new
  while Time.new - start < 30
    begin
    el = $driver.find_element(type, value)
    p "Found type: #{type}, value: #{value}"
      return el
    rescue StandardError, Net::ReadTimeout => e
      error = e
      p "Retrying, type: #{type}, value: #{value}"
      sleep(0.2)
    end
  end
  raise "Faile to find element, type: #{type}, value: #{value} . #{e}"
end

def check_if_visible(type, value, timer: 10)
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
