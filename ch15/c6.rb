class C
  class << self
    def self.inherited
      puts "Singleton class of C just got inherited!"
      puts "But you'll never see this message."
    end
  end
end
class D < C
  class << self
    puts "D's singleton class now exists, but no callback!"
  end
end
