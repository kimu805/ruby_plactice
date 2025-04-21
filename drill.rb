class Config
  def initialize(&block)
    instance_eval(&block)
  end

  def set(key, value)
    puts "#{key} = #{value}"
  end
end

Config.new do
  set :host, "localhost"
  set :port, 3000
end
