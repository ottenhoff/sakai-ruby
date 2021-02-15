#!/usr/bin/env ruby
# encoding: UTF-8
# Generated by wsdl2ruby (SOAP4R-NG/2.0.4)
require_relative 'SakaiLoginServiceDriver.rb'


module SakaiProd

endpoint_url = ARGV.shift
obj = SakaiLogin.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   loginToServerGET(id, pw)
#
# ARGS
#   id              C_String - {http://www.w3.org/2001/XMLSchema}string
#   pw              C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
id = pw = nil
puts obj.loginToServerGET(id, pw)

# SYNOPSIS
#   loginToServer(id, pw)
#
# ARGS
#   id              C_String - {http://www.w3.org/2001/XMLSchema}string
#   pw              C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
id = pw = nil
puts obj.loginToServer(id, pw)

# SYNOPSIS
#   logout(sessionid)
#
# ARGS
#   sessionid       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
sessionid = nil
puts obj.logout(sessionid)

# SYNOPSIS
#   login(id, pw)
#
# ARGS
#   id              C_String - {http://www.w3.org/2001/XMLSchema}string
#   pw              C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
id = pw = nil
puts obj.login(id, pw)

# SYNOPSIS
#   loginGET(id, pw)
#
# ARGS
#   id              C_String - {http://www.w3.org/2001/XMLSchema}string
#   pw              C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        C_String - {http://www.w3.org/2001/XMLSchema}string
#
id = pw = nil
puts obj.loginGET(id, pw)

# SYNOPSIS
#   logoutGET(sessionid)
#
# ARGS
#   sessionid       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   v_return        Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
sessionid = nil
puts obj.logoutGET(sessionid)




end
