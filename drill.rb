people = [
  { name: "Alice", age: 30 },
  { name: "Bob", age: 25 },
  { name: "Charlie", age: 35 }
]

oldest_person = people.max_by { |person| person[:age] }
puts oldest_person[:name]  # => "Charlie"
