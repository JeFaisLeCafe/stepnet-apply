json.array! @drivers do |driver|
  json.extract! driver, :id, :firstname, :lastname, :phone
end
