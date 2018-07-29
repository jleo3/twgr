class RubyWelcomeWagon
  def message
    <<~EOM
      Welcome to the world of Ruby!
      We're happy you're here!
    EOM
  end
end

RubyWelcomeWagon.new.message
