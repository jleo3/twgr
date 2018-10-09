require_relative 'callertools'
class MicroTest
  def self.inherited(c)
    c.class_eval do
      def self.method_added(m)
        if m =~ /^test/
          obj = self.new
          if obj.methods.include?(:setup)
            obj.setup
          end
          obj.send(m)
        end
      end
    end
  end
  def assert(assertion)
    if assertion
      puts "Assertion passed"
      true
    else
      puts "Assertion failed:"
      stack = CallerTools::Stack.new
      failure = stack.find { |call| call.meth !~ /assert/ }
      puts failure
      false
    end
  end
  def assert_equal(expected, actual)
    result = assert(expected == actual)
    puts "(#{actual} is not #{expected})" unless result
    result
  end
end
