require 'rbconfig'

if Config::CONFIG['target_os'] =~ /mswin|mingw/i
	Dir['bin/*'].each do |filename|
		File.open(filename + '.bat', 'w') do |file|
			file.puts '@"%~dp0ruby.exe" "%~dpn0" %*'
		end
	end
end

