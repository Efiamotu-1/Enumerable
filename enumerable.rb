module MyEnumerable
  def all?
    each { |item| return false unless yield(item) }
    true
  end

  def any?
    each { |item| return true if yield(item) }
    false
  end

  def filter
    arr = []
    each { |item| arr.push(item) if yield(item) }
    arr
  end
end
