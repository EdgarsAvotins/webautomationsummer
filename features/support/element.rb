module Element

  def self.get_element(type, value)
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

def self.check_if_visible(type, value, timer: 10)
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

def self.get_list(type, value)
      start = Time.new
      while Time.new - start < 20
        begin
          el_list = $driver.find_elements(type, value)
          raise "Element list is empty!" if el_list.empty?
          p "Found element list, type: #{type}, value: #{value}"
          return el_list
        rescue
          p "Retrying, type: #{type}, value: #{value}"
          sleep(0.2)
        end
      end
      raise "Failed to find element, type: #{type}, value: #{value}"
    end

end
