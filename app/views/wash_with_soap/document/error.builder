xml.instruct!
xml.tag! "soap:Envelope", "xmlns:soap" => 'http://schemas.xmlsoap.org/soap/envelope/' ,
							  "xmlns:ns1" => 'http://appstore._2013_03.clareity.com',
							  "xmlns:xsi" => 'http://www.w3.org/2001/XMLSchema-instance' do
  xml.tag! "soap:Body" do
    xml.tag! "soap:Fault" do
      xml.faultcode error_code
      xml.faultstring error_message
      xml.tag! "detail", "xsi:type" => 'ns1:BaseErrorType' do
      	xml.faultcode secCode
      	xml.faultmessage secMessage
      end
    end
  end
end
