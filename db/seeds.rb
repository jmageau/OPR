Administrator.create(email: "admin@email.com", password: "pass", password_confirmation: "pass")

sa1 = SubsidiaryAgency.create(name: 'agency 1', location: "Ottawa")
sa2 = SubsidiaryAgency.create(name: "agency 2", location: "Toronto")

am1 = AgencyManager.create(email: "agencyManager1@email.com", password: "pass", password_confirmation: "pass", subsidiary_agency_id: sa1.id)
am2 = AgencyManager.create(email: "agencyManager2@email.com", password: "pass", password_confirmation: "pass", subsidiary_agency_id: sa2.id)

c1 = Customer.create(email: "customer1@email.com", password: "pass", password_confirmation: "pass", subsidiary_agency_id: sa1.id)
c2 = Customer.create(email: "customer2@email.com", password: "pass", password_confirmation: "pass", subsidiary_agency_id: sa1.id)
c3 = Customer.create(email: "customer3@email.com", password: "pass", password_confirmation: "pass", subsidiary_agency_id: sa2.id)

VisitingList.create(customer_id: c1.id)
VisitingList.create(customer_id: c2.id)
VisitingList.create(customer_id: c3.id)

o1 = Owner.create(email: "owner1@email.com", password: "pass", password_confirmation: "pass", subsidiary_agency_id: sa1.id)
o2 = Owner.create(email: "owner2@email.com", password: "pass", password_confirmation: "pass", subsidiary_agency_id: sa2.id)
o3 = Owner.create(email: "owner3@email.com", password: "pass", password_confirmation: "pass", subsidiary_agency_id: sa2.id)

a1 = Agent.create(email: "agent1@email.com", password: "pass", password_confirmation: "pass", subsidiary_agency_id: sa1.id)
a2 = Agent.create(email: "agent2@email.com", password: "pass", password_confirmation: "pass", subsidiary_agency_id: sa1.id)
a3 = Agent.create(email: "agent3@email.com", password: "pass", password_confirmation: "pass", subsidiary_agency_id: sa2.id)


Property.create(property_type: "House", address: "123 Ave 1", location: "Ottawa", number_of_bedrooms: 1, number_of_bathrooms: 2, number_of_other_rooms: 3, rent: 500.50, deletion_status: false, subsidiary_agency_id: o1.subsidiary_agency_id, owner_id: o1.id)
Property.create(property_type: "House", address: "124 Ave 1", location: "Ottawa", number_of_bedrooms: 2, number_of_bathrooms: 2, number_of_other_rooms: 2, rent: 650.99, deletion_status: false, subsidiary_agency_id: o1.subsidiary_agency_id, owner_id: o1.id)
Property.create(property_type: "Apartment", address: "125 Ave 1", location: "Ottawa", number_of_bedrooms: 1, number_of_bathrooms: 1, number_of_other_rooms: 1, rent: 200.00, deletion_status: false, subsidiary_agency_id: o1.subsidiary_agency_id, owner_id: o1.id)

Property.create(property_type: "House", address: "111 First Street", location: "Ottawa", number_of_bedrooms: 5, number_of_bathrooms: 4, number_of_other_rooms: 3, rent: 5000.00, deletion_status: false, subsidiary_agency_id: o2.subsidiary_agency_id, owner_id: o2.id)
Property.create(property_type: "House", address: "7 March Road", location: "Ottawa", number_of_bedrooms: 7, number_of_bathrooms: 8, number_of_other_rooms: 3, rent: 1999.99, deletion_status: false, subsidiary_agency_id: o2.subsidiary_agency_id, owner_id: o2.id)

Property.create(property_type: "Apartment", address: "1 Wall Street", location: "New York", number_of_bedrooms: 1, number_of_bathrooms: 2, number_of_other_rooms: 1, rent: 700, deletion_status: false, subsidiary_agency_id: o3.subsidiary_agency_id, owner_id: o3.id)
Property.create(property_type: "Apartment", address: "2 Wall Street", location: "New York", number_of_bedrooms: 2, number_of_bathrooms: 2, number_of_other_rooms: 2, rent: 600, deletion_status: false, subsidiary_agency_id: o3.subsidiary_agency_id, owner_id: o3.id)
Property.create(property_type: "House", address: "4 Wall Street", location: "New York", number_of_bedrooms: 4, number_of_bathrooms: 2, number_of_other_rooms: 5, rent: 2000, deletion_status: false, subsidiary_agency_id: o3.subsidiary_agency_id, owner_id: o3.id)
Property.create(property_type: "House", address: "5 Wall Street", location: "New York", number_of_bedrooms: 4, number_of_bathrooms: 2, number_of_other_rooms: 5, rent: 4000, deletion_status: false, subsidiary_agency_id: o3.subsidiary_agency_id, owner_id: o3.id)





# TODO: complete with missing models
