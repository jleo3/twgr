module M
  def report
    puts "'report' method in module M"
  end
end
module N
  def report
    puts "'report' method in module N"
  end
end
class C
  include M
  include N
  include M
end
c = C.new
c.report
