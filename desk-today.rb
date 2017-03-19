#!/usr/bin/env ruby
require 'date'
require "FileUtils"

date = Date.today
desktop = Dir.home() + "/Desktop"
folder_today = Dir.home() +"/Documents/#{date}"
system 'mkdir', '-p', folder_today

Dir.foreach(desktop) do |file|
  if file[0] != '.'
    FileUtils.move "#{desktop}/#{file}", "#{folder_today}/#{file}"
  end
end

