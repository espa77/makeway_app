class XmlParseController < ApplicationController
  xml_doc  = Nokogiri::XML(File.open("vendor/assets/data/FlatFile_US_CA_Contract_EN.xml"))
  ns = xml_doc.collect_namespaces #<== DONT THINK THIS WORKS
  parts = xml_doc.xpath('/Products', ns)

  codes = []
  parts.each do |row|
    codes << xpath('/product', ns).text
  end

  # code to add 'codes' array to DB entities will go here

end
