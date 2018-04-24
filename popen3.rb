require 'open3'
stdin, stdout, stderr = Open3.popen3("cat")
t = Thread.new do
  loop { stdin.puts gets }
end
u = Thread.new do
  n = 0
  str = ""
  loop do
    str << stdout.gets
    n += 1
    if n % 3 == 0
      puts "--------\n"
      puts str
      puts "--------\n"
      str = ""
    end
  end
end
t.join
u.join
