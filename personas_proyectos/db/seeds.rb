# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all
Employee.destroy_all

#creamos 6 Empleado en memoria

6.times do |i|
    Employee.create({
        name: "Empleado #{i+1}",
    })
end
# creamos 10 proyectos anidando 4 empleados aleatorios  con el RANDOM a cada empleado, first selecciona el primero
10.times do |i|
    p = Project.create({
        name: "Proyecto #{i+1}",
    })
    4.times do |i|
        p.employees << Employee.order('RANDOM()').first
    end
    #p.save
end
