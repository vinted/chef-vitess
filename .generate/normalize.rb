stdin = STDIN.read

stdin.lines.each_slice(2) do |line|
  key, comment = line.map(&:strip).join(' ').split(' ', 2)
  key = key.sub('-', '')
  next if key =~ /^test/
  next if key =~ /^version/
  puts "#{key} #{comment}"
end
