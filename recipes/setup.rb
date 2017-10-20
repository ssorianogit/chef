service 'ntpd' do
    action [ :enable, :start ]
end

package 'Intall tree' do
    package_name 'ntp'
    action :install
end

file 'Create motd file' do
    path '/etc/motd'
    content 'This Server it is property of Samuel Soriano'
    owner 'root'
    group 'root'
    action :create

end