json.driver do
  json.id @driver.id
  json.firstname @driver.firstname
  json.lastname @driver.lastname
  json.company @driver.company.name
  json.vehicule do
    json.model @driver.vehicule.model.name
    json.registration @driver.vehicule.registration
    json.km @driver.vehicule.km
  end
end
#    @driver, :id, :firstname, :lastname
#   }
# json.extract! @driver.vehicule, :id, :registration, :km
# json.extract! @driver.vehicule.model, :name
# json.extract! @driver.company, :name, :address

