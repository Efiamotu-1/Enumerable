module MyEnumerable
  def all?
    each { |item| return false unless yield(item) }
    true
  end

  def any?
    each { |item| return true if yield(item) }
    false
  end

  def min
    min = 0
    each do |item|
      if item < min
        min = item
      elsif min.zero?
        min += item
      end
    end
    min
  end

  def max
    max = 0
    each do |item|
      if item > max
        max = item
      elsif max.zero?
        max += item
      end
    end
    max
  end

  def filter
    arr = []
    each { |item| arr.push(item) if yield(item) }
    arr
  end
end
