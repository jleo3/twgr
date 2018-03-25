module NoFreeze
  refine Object do
    undef :freeze
  end
end

module NoInspect
  refine Object do
    undef :inspect
  end
end

class Lister
  attr_reader :list
  def initialize
    @list = ""
    @level = 0
  end
  def indent(string)
    " " * @level + string.to_s
  end
  def method_missing(m, &block)
    @list << indent(m) + ":"
    @list << "\n"
    @level += 2
    @list << indent(yield(self))
    @level -= 2
    @list << "\n"
    return ""
  end
end
using NoFreeze
using NoInspect
lister = Lister.new
lister.groceries do |item|
  item.name { "Apples" }
  item.quantity { 10 }
  item.name { "Sugar" }
  item.quantity { "1 lb" }
end
lister.freeze do |f|
  f.name { "Ice cream" }
end
lister.inspect do |i|
  i.item { "car" }
end
lister.sleep do |s|
  s.hours { 8 }
end
lister.print do |document|
  document.book { "Chapter 13" }
  document.letter { "to editor" }
end
puts lister.list
