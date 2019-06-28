bash "install_gcc" do
	user "winston"
	cwd "/srv/www/myapp1_app"
	code <<-EOH
		yum install gcc72-c++
	EOH
end

