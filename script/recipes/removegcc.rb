bash "remove_gcc" do
	user "winston"
	cwd "/srv/www/myapp1_app/"
	code <<-EOH
		yum remove gcc48-c++
	EOH
end
