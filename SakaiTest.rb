require_relative 'SakaiTest/SakaiLoginServiceDriver.rb'
require_relative 'SakaiTest/SakaiScriptServiceDriver.rb'
require 'Warning'

# Annoying warning because of old cookie parsing code 
Warning.ignore(/Unknown key: SameSite = lax/)

id = ARGV.shift
pw = ARGV.shift

# run ruby with -d to see SOAP wiredumps.
soap_login = SakaiTest::SakaiLogin.new()
soap_sakai = SakaiTest::SakaiScript.new()

sakai_session = soap_login.login(id, pw)
#puts sakai_session

# Confirm that we are locked to one node of the load-balanced service

x = 0

while x <= 10
    check_session = soap_sakai.checkSession(sakai_session)
    puts (check_session == sakai_session)
    x += 1
end

