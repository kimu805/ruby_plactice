h = { 1 => "Hoge", 2 => "Piyo", 3 => "Fuga" }
h.delete { |x, y| x < 2 }

p h