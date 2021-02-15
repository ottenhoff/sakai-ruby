# encoding: UTF-8
# Generated by wsdl2ruby (SOAP4R-NG/2.0.4)
require_relative 'SakaiLoginService.rb'
require_relative 'SakaiLoginServiceMappingRegistry.rb'
require 'soap/rpc/driver'

module SakaiTest

class SakaiLogin < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://sakai-test.duke.edu/sakai-ws/soap/login"
  NsWebservicesSakaiprojectOrg = "http://webservices.sakaiproject.org/"

  Methods = [
    [ XSD::QName.new(NsWebservicesSakaiprojectOrg, "loginToServerGET"),
      "",
      "loginToServerGET",
      [ [:in, "id", ["::SOAP::SOAPString"]],
        [:in, "pw", ["::SOAP::SOAPString"]],
        [:retval, "return", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsWebservicesSakaiprojectOrg, "loginToServer"),
      "",
      "loginToServer",
      [ [:in, "id", ["::SOAP::SOAPString"]],
        [:in, "pw", ["::SOAP::SOAPString"]],
        [:retval, "return", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsWebservicesSakaiprojectOrg, "logout"),
      "",
      "logout",
      [ [:in, "sessionid", ["::SOAP::SOAPString"]],
        [:retval, "return", ["::SOAP::SOAPBoolean"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsWebservicesSakaiprojectOrg, "login"),
      "",
      "login",
      [ [:in, "id", ["::SOAP::SOAPString"]],
        [:in, "pw", ["::SOAP::SOAPString"]],
        [:retval, "return", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsWebservicesSakaiprojectOrg, "loginGET"),
      "",
      "loginGET",
      [ [:in, "id", ["::SOAP::SOAPString"]],
        [:in, "pw", ["::SOAP::SOAPString"]],
        [:retval, "return", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ],
    [ XSD::QName.new(NsWebservicesSakaiprojectOrg, "logoutGET"),
      "",
      "logoutGET",
      [ [:in, "sessionid", ["::SOAP::SOAPString"]],
        [:retval, "return", ["::SOAP::SOAPBoolean"]] ],
      { :request_style =>  :rpc, :request_use =>  :literal,
        :response_style => :rpc, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = SakaiLoginServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = SakaiLoginServiceMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
