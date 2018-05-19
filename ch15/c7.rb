class C
  def self.const_missing(const)
    puts "#{const} is undefined-setting it to 1."
    const_set(const,1)
  end
end
puts C::A
puts C::A
