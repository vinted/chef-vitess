def vitess_major_version(component)
  # example value: v11.0.1-92ac1ff
  node['vitess']['version'][component].split('.')[0].tr('^0-9', '').to_i
end
