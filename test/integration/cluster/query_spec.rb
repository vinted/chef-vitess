describe port(15306) do
  it { should be_listening }
  its('protocols') { should include('tcp') }
end

def session
  mysql_session(nil, nil, nil, nil, '/tmp/vtgate.sock')
end

describe session.query('show databases;') do
  its('stderr') { should_not match(/Can't connect to local MySQL server through socket/) }
  its('stdout') { should match(/commerce/) }
end

# Teardown previous inserts
describe session.query('DELETE FROM product;') do
  its('stderr') { should_not match(/Can't connect to local MySQL server through socket/) }
end

# Insert some data
describe session.query("INSERT INTO product(sku, description, price) VALUES ('92929', 'awdawd', 34);") do
  its('stderr') { should_not match(/Can't connect to local MySQL server through socket/) }
end
describe session.query("INSERT INTO product(sku, description, price) VALUES ('11', 'faw', 100);") do
  its('stderr') { should_not match(/Can't connect to local MySQL server through socket/) }
end

describe session.query('SELECT COUNT(*) from product;') do
  its('stderr') { should_not match(/Can't connect to local MySQL server through socket/) }
  its('stdout') { should match(/2$/) }
end
