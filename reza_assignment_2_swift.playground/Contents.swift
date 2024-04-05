import Foundation

struct CustomerEmail {
    var name: String
    var email: String
}

func printCustomerEmailList(customers: [CustomerEmail]) {
    for customer in customers {
        print("Name: \(customer.name) Email: \(customer.email)")
    }
}

struct Location {
  let x: Double
  let y: Double
}

let storeLocation1 = Location (x: 3, y: 3)
let storeLocation2 = Location(x: 6, y:8)
let storeRange = 2.5

struct Customer {
    var name: String
    var email: String
    var phoneNumber: String
    var acceptedNewsletter: Bool
    var location: Location
}

let customers: [Customer] = [
    Customer(name: "Jane Doe", email: "jdoe@gmail.com", phoneNumber: "123-456-7890", acceptedNewsletter: true, location: Location(x: 4, y: -7)),
    Customer(name: "John Smith", email: "jsmith@yahoo.com", phoneNumber: "987-654-3210", acceptedNewsletter: false, location: Location(x: 3, y: -1)),
    Customer(name: "Alice Johnson", email: "alice@example.com", phoneNumber: "555-555-5555", acceptedNewsletter: true, location: Location(x: 5, y: 0)),
    Customer(name: "Michael Brown", email: "mbrown@gmail.com", phoneNumber: "111-222-3333", acceptedNewsletter: true, location: Location(x: 4, y: 2)),
    Customer(name: "Emily Wilson", email: "emilywilson@example.com", phoneNumber: "777-888-9999", acceptedNewsletter: false, location: Location(x: 5, y: 4)),
    Customer(name: "David Lee", email: "david.lee@gmail.com", phoneNumber: "999-888-7777", acceptedNewsletter: true, location: Location(x: 3, y: -1)),
    Customer(name: "Sophia Martinez", email: "sophiam@example.com", phoneNumber: "333-444-5555", acceptedNewsletter: false, location: Location(x: 4, y: -7)),
    Customer(name: "James Johnson", email: "jjohnson@example.com", phoneNumber: "222-111-3333", acceptedNewsletter: true, location: Location(x: 3, y: -11)),
    Customer(name: "Olivia Taylor", email: "olivia.taylor@example.com", phoneNumber: "777-999-1111", acceptedNewsletter: true, location: Location(x: 51, y: -0)),
    Customer(name: "William Davis", email: "wdavis@example.com", phoneNumber: "444-333-2222", acceptedNewsletter: false, location: Location(x: 4, y: -7))
]

func distanceBetween(_ location1: Location, _ location2: Location) -> Double {
    let distanceX = location2.x - location1.x
    let distanceY = location2.y - location1.y
    return sqrt(distanceX * distanceX + distanceY * distanceY)
}

func printCustomersWithinRange(storeLocation: Location, customers: [Customer]) {
    print("Customers within store range:")
    for customer in customers {
        let distance = distanceBetween(storeLocation, customer.location)
        if distance <= storeRange {
            print(customer.email)
        }
    }
}

printCustomersWithinRange(storeLocation: storeLocation1, customers: customers) // Example store1 range
printCustomersWithinRange(storeLocation: storeLocation2, customers: customers) // Example store2 range
