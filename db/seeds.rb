require 'roo'

Gig.destroy_all;

xlsx = Roo::Excelx.new("public/GigList.xlsx")

xlsx.each_row_streaming(offset: 1,max_rows: 100) do |row|
  Gig.create(name: row[0], industry: row[1], url: row[2],photo_url: row[3])
end
