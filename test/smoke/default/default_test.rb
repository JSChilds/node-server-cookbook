# # encoding: utf-8

# Inspec test for recipe node-server::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


# This is an example test, replace it with your own test.

describe port(80) do
  it { should be_listening }
end

describe package('nodejs') do
	it { should be_installed }
end

describe package('nginx') do
	it { should be_installed }
end

describe package('npm') do
	it { should be_installed }
end

describe npm('pm2') do
	it { should be_installed }
end