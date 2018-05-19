module CallerTools
  class Call
    CALL_RE = /(.*):(\d+):in `(.*)'/
    attr_reader :program, :line, :meth
    def initialize(string)
      @program, @line, @meth = CALL_RE.match(string).captures
    end
    def to_s
      "%30s%5s%15s" % [program, line, meth]
    end
  end

  class Stack
    def initialize
      stack = caller
      stack.shift
      @backtrace = stack.map do |call|
        Call.new(call)
      end
    end
    def report
      @backtrace.map do |call|
        call.to_s
      end
    end
    def find(&block)
      @backtrace.find(&block)
    end
  end
end
