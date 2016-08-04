class TeachersImporter

  def initialize
  end

  def import
    Teacher.create({name: "Bob Bobby", email: "bob@gmail.com", address: "905 Wesbrook Mall", phone: "111-1111"})
    Teacher.create({name: "Sam Sammy", email: "sam@hotmail.com", address: "323 Oakridge Center", phone: "222-2222"})
    Teacher.create({name: "Alex Alexy", email: "alex@gmail.com", address: "132 Agronomy Rd", phone: "333-3333"})
    Teacher.create({name: "Bill Billy", email: "bill@gmail.com", address: "5083 Cambie Rd", phone: "444-4444"})
    Teacher.create({name: "Rasely Ma", email: "rasely@gmail.com", address: "128 Broadway", phone: "555-5555"})
    Teacher.create({name: "Michael Lee", email: "michael@gmail.com", address: "W 4th Ave", phone: "666-6666"})
    Teacher.create({name: "Jen Jenny", email: "jen@hotmail.com", address: "45 E 15th Ave", phone: "777-7777"})
    Teacher.create({name: "Rachel Rachel", email: "rachel@hotmail.com", address: "135 Clark Dr", phone: "888-8888"})
    Teacher.create({name: "May Mei", email: "mei@gmail.com", address: "3242 Victoria", phone: "999-9999"})
  end

end
