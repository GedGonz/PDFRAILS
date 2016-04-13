#Configuracion de PDFKit 
PDFKit.configure do |config|
if ["development"].include?(Rails.env)
  
  config.wkhtmltopdf = 'bin/wkhtmltopdf/bin/wkhtmltopdf.exe' #Direccion deL bin de wkhtmltopdf
end
config.default_options = {
  :encoding=>"UTF-8",
  :page_size=>"Letter",
  :margin_top=>"0.25in",
  :margin_right=>"1in",
  :margin_bottom=>"0.25in",
  :margin_left=>"1in",
  :disable_smart_shrinking=> false
}
end