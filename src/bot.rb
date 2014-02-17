#!/usr/bin/env ruby

require 'cinch' 


test = Cinch::Bot.new do 
    configure do |c|
        c.server = "irc.cat.pdx.edu"
        c.channels= ["#tstbot"]
        c.nick = "test bot" 
    end

    on :message, "hello" do |m|
    m.reply "Hello, #{m.user.nick}"
  end
end

test.start



