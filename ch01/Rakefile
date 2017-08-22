namespace :admin do
  desc "Interactively delete all files in /tmp"
  task :clean_tmp do
    Dir["/tmp/*"].each do |f|
      next unless File.file?(f)
      print "Delete #{f}? "
      answer = $stdin.gets
      case answer
      when /^y/
        File.unlink(f)
      when /^q/
        break
      end
    end
  end
end
