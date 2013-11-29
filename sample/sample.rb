class Sample
  class << self
    def run
      puts "hello, #{gets}"
      puts "hello, #{gets}"
    end
  end
end

if __FILE__ == $0
  Sample.run
end
