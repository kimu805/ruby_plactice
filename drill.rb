class Lawyer
  def method_missing(method, *args)
    puts "呼び出した: #{method}(#{ args.join(", ") })"
  end
end

bob = Lawyer.new
bob.tale_simple("a", "b")