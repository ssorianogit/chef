file '/hello.txt' do
  content 'Hello, word!'
  owner 'root'
  group 'root'
  mode '0644'
  action 'create'
end