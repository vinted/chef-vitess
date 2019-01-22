stdin = STDIN.read

def wrap(val)
  return 'nil' if val.nil?
  return val if val.to_i.to_s == val
  "'#{val}'"
end

stdin.lines do |line|
  line = line.strip
  next if line =~ /^#/ || line.empty?
  key, val = line.split('=').map(&:strip)

  puts %('#{key}' => #{wrap(val)},)
end
