class Info
  include MongoMapper::Document
  key :name, String, :required => true
end
