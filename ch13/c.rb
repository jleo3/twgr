class C
  def talk
    puts "Hi from original class!"
  end
end
module M
  def talk
    puts "Hello from module!"
  end
end
c = C.new
c.talk
class << c
  include M
end
c.talk
class C
  include M
end
class << c
  p ancestors
end
