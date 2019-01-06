stdin = STDIN.read

PREFIX_NAME = 'vinted-vitess'
DEFAULT_VALUE_REGEXP = /\(default (\S+)\)$/

def prefix
  [PREFIX_NAME].concat(ARGV).map { |k| %{['#{k}']} }.join('')
end

def derive_value(comment)
  type, rest = comment.split(' ', 2)

  return 1 if rest =~ /\(default 1\)/

  match = rest.match(DEFAULT_VALUE_REGEXP)
  return unless match

  match = match[1]

  if %w[true false].include?(match)
    return match
  end

  case type
  when 'duration'
    %{'#{match}'}
  when 'string'
    match.gsub('"', "'")
  when 'int', 'uint'
    match.to_i
  when 'float'
    match.to_f
  else
    nil
  end
end

def print_attribute(attribute, val = nil, with_comment: false)
  if with_comment
    puts "# default#{prefix}#{attribute} ="
  else
    if val.nil?
      val = "'TODO'"
    end

    puts "default#{prefix}#{attribute} = #{val}"
  end
end

stdin.lines do |line|
  key, comment = line.split(' ', 2)

  attribute = key.split(/-|_/).map { |k| %{['#{k}']} }.join('')

  next if comment =~ /deprecated:/

  puts "# #{comment}"
  if comment =~ /\(default /

    val = derive_value(comment)

    print_attribute(attribute, val, with_comment: false)
  else
    print_attribute(attribute, with_comment: true)
  end
  puts
end
