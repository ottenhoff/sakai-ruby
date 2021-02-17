bundle install

bundle binstubs soap4r-ng

bin/wsdl2ruby.rb --wsdl https://sakai-test.duke.edu/sakai-ws/soap/login\?wsdl --type client --module_path SakaiTest

bin/wsdl2ruby.rb --wsdl https://sakai-test.duke.edu/sakai-ws/soap/sakai\?wsdl --type client --module_path SakaiTest

bundle exec ruby SakaiTest.rb username password
