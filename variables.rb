class ExampleClass
  @variable = 'foo'
  @@variable = 'bar'

  def initialize
    @variable = 'baz'
  end

  def self.t
    puts @variable
  end

  def test
    self.class.t
    puts @@variable
    puts @variable
  end
end

class ExampleSubclass < ExampleClass
  @variable = '1'
  @@variable = '2'
  
  def initialize
    @variable = '3'
  end
end

first_example = ExampleClass.new
first_example.test

puts '---'

second_example = ExampleSubclass.new
second_example.test

puts "#{ExampleSubclass.instance_methods.grep /test/}"
puts "#{ExampleSubclass.methods.grep /^t$/}"
