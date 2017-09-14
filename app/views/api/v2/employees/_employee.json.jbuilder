json.id employee.id
if employee.full_name.length > 12
  json.fullName employee.full_name
else
  json.fullName "this person has a short name"
end
json.firstName employee.first_name
json.lastName employee.last_name
json.birthdate employee.birthdate
json.email employee.email
json.addresses employee.addresses.each do |address|
  json.streetAddress1 address.street_address_1
  json.streetAddress2 address.street_address_2
  json.city address.city
  json.state address.state
  json.zipCode address.zip_code
end
