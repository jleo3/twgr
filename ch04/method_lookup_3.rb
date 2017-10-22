module M
  def report
    puts "'report' method in module M"
  end
end
class C
  include M
  def report
    puts "'report' method in class C"
    puts "About to trigger the next higher-up report method..."
    super
    puts "Back from the 'super' call."
  end
end
c = C.new
c.report
