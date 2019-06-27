require "minitest/spec"

describe_recipe "opsworks_postgresql::client_install" do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it "installs packages for client" do
    case node[:platform]
    when "centos","redhat","fedora","amazon"
      package("postgresql96-devel").must_be_installed
      package("postgresql96").must_be_installed
    when "debian","ubuntu"
      package("libpq-dev").must_be_installed
      package("postgresql-client").must_be_installed
    end
  end
end
