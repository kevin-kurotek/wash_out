xml.instruct!
xml.tag! "SOAP-ENV:Envelope", "xmlns:soap" => 'http://schemas.xmlsoap.org/soap/envelope/' ,
							  "xmlns:ns1" => 'http://appstore._2013_03.clareity.com',
							  "xmlns:xsi" => 'http://www.w3.org/2001/XMLSchema-instance' do
  xml.tag! "SOAP-ENV:Body" do
    xml.tag! "SOAP-ENV:Fault" do
      xml.faultcode error_code
      xml.faultstring error_message
      xml.tag! "detail", "xsi:type" => 'ns1:BaseErrorType' do
      	xml.faultcode secCode
      	xml.faultmessage secMessage
      end
    end
  end
end
