require_relative 'SakaiTest/SakaiLoginServiceDriver.rb'
require_relative 'SakaiTest/SakaiScriptServiceDriver.rb'
require 'Warning'

# Annoying warning because of old cookie parsing code 
Warning.ignore(/Unknown key: SameSite = lax/)

id = ARGV.shift
pw = ARGV.shift
site_id = ARGV.shift
site_property = 'randomprop'

# run ruby with -d to see SOAP wiredumps.
soap_login = SakaiTest::SakaiLogin.new()
soap_sakai = SakaiTest::SakaiScript.new()

sakai_session = soap_login.login(id, pw)


x = 0

while x <= 30
    soap_sakai.setSiteProperty(sakai_session, site_id, site_property, site_property + x.to_s)
    sleep(1)
    check_property = soap_sakai.getSiteProperty(sakai_session, site_id, site_property)
    puts check_property
    x += 1
end

