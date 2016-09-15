require 'date'

date = Date.today
desktop = "/Users/mattbettinson/Desktop"
folder_today = "/Users/mattbettinson/Documents/#{date}"

system 'mkdir', '-p', folder_today

Dir.foreach(desktop) do |file|
  if file[0] != '.'
    system "mv #{desktop}/#{file} #{folder_today}/#{file}"
  end
end
