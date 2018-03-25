newdir = "/tmp/newdir"
newfile = "newfile"
Dir.mkdir(newdir)
print "Is #{newdir} empty? "
puts Dir.empty?(newdir)
Dir.chdir(newdir) do
  File.open(newfile, "w") do |f|
    f.puts "Sample file in new directory"
  end
  puts "Current directory: #{Dir.pwd}"
  puts "Directory listing: "
  p Dir.entries(".")
  File.unlink(newfile)
end
Dir.rmdir(newdir)
print "Does #{newdir} still exist? "
if File.exist?(newdir)
  puts "Yes"
else
  puts "No"
end
