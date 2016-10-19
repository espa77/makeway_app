module MakeWayParse

  xml_doc = Nokogiri::XML(File.open("vendor/assets/data/test_file.xml"))

  def brand
    brand_list = []
    brands = xml_doc.css("//Product/Brand").children
    brands.each do |row|
      text = row.inner_text
      if text.include? ":"
        trimmed_text = text.split(":")[0]
        brand_list << trimmed_text
      else
        brand_list << text
      end
      puts brand_list
    end
  end

end
