a = {"Foo" => "Hoge", "Bar" => "Piyo", "Baz" => "Fuga" }
b = {"Foo" => "hoge", "Bar" => "piyo", "Baz" => "fuga" }

p a.update(b).sort { |a, b| a[1] <=> b[1] }