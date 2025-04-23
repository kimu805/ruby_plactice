require "forwardable"
class Foo 
  extend Forwardable

  def initialize
    @buffer = []
  end

  def_delegators(:@buffer, :<<, :[])
end

f = Foo.new
f << 1
f << 2
f << 3
p f[0]