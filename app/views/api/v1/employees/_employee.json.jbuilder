json.id employee.id
if employee.full_name.length > 12
  json.full_name employee.full_name
else
  json.full_name "this person has a short name"
end
json.first_name employee.first_name
json.last_name employee.last_name
json.birthdate employee.birthdate
json.email employee.email
json.addresses employee.addresses.each do |address|
  json.street_address_1 address.street_address_1
  json.street_address_2 address.street_address_2
  json.city address.city
  json.state address.state
  json.zip_code address.zip_code
end
