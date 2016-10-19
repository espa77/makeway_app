namespace :xml_parse do

xml_doc = Nokogiri::XML(File.open("vendor/assets/data/FlatFile_US_CA_Contract_EN.xml"))


  desc "importing products"
  task import_products: :environment do
    products = xml_doc.css('Products').text
    brands = xml_doc.xpath("//Product").text
    products_two = xml_doc.xpath("///Products").text
  end

  desc "importing product specifications"
  task import_product_attributes: :environment do
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
    end
  end

  desc "importing dimensions"
  task import_dimensions: :environment do
  end

  desc "importing market churn data"
  task import_mkt_chn_data: :environment do
  end

  desc "importing specifications"
  task import_specifications: :environment do
  end

  desc "importing spec attributes"
  task import_spec_attribute: :environment do
  end

  desc "importing assets"
  task import_assets: :environment do
  end

  desc "importing asset files"
  task import_asset_files: :environment do
  end

end
