require 'parallel'
require 'bzip2/ffi'
require 'date'
require 'open-uri'
require 'csv'

# dates = (Date.parse("2015/01/01")..Date.parse("2015/10/29"))
dates = (Date.parse("2015/01/01")..Date.parse("2015/01/02"))

CSV.open("")
Parallel.each(dates, in_threads: 2) {|date|
  # bzip2 = open("http://dumps.wikimedia.org/other/pagecounts-ez/merged/#{date.year}/#{data.strftime("%Y-%m")}/pagecounts-#{date.strftime("%y-%m-%d")}.bz2")
  puts "http://dumps.wikimedia.org/other/pagecounts-ez/merged/#{date.year}/#{data.strftime("%Y-%m")}/pagecounts-#{date.strftime("%y-%m-%d")}.bz2"
  # bzip2.close
  # File.rename(img.path, file_path)
  # puts "end download: #{url}"
}
