# Install gcc72
#execute "yum install gcc72-c++" do
 # command "yum install gcc72-c++"
#end



package "gcc72-c++" do
  retries 3
  retry_delay 5
end
