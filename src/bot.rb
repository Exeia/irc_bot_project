#!/usr/bin/env ruby

require 'cinch' 

#going to be either steam bot(sales), draft bot for hearthstone or dota2 or all
test = Cinch::Bot.new do 
    configure do |c|
        c.server = "irc.cat.pdx.edu"
        c.channels= ["#tstbot"]
        c.nick = "test bot" 
    end

    on :message, /!hearth (.+ .*), (.+ .*)/ do |m, opt1,opt2|
      pick = rand(2)
      if pick == 1 
            
        m.reply " #{m.user.nick}: #{opt1}"
      else
          m.reply "#{m.user.nick}: #{opt2}"
      end

  end
    on :message, /!dota (.+ .*), (.+ .*)/ do |m, opt1,opt2|
      pick = rand(2)
      if pick == 1 
            
        m.reply " #{m.user.nick}: #{opt1}"
      else
          m.reply "#{m.user.nick}: #{opt2}"
      end

  end
end

test.start

