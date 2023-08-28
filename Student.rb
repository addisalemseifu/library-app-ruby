class Student < Person
    def initialize(name,age="Unknown",parent_permission=true,classroom)
        @parent_permission = parent_permission
        @name = name
        @age = age
        @classroom = classroom
        @id;
    end
    def play_hooky
        "¯\(ツ)/¯"
    end
end