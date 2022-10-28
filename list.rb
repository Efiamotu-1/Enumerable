require_relative './enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each(&block)
    return 'no block given' unless block_given?

    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |item| item < 5 })
puts(list.all? { |item| item > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts list.min
puts list.max
print(list.filter(&:even?))
print(list.filter(&:odd?))
