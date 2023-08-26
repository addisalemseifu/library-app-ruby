class Person
    attr_reader :id
    attr_accessor :name
    attr_accessor :age
    def def initialize(name,age="Unknown",parent_permission=true)
      @parent_permission = parent_permission
      @name = name
      @age = age
    end

    private
    def of_age?
        return true if @age >= 18
        false
    end

    public
    def can_use_services?
        return true if of_age? || @parent_permission
    end
end


class Student < Person
    def initialize(name,age="Unknown",parent_permission=true,classroom)
        @parent_permission = parent_permission
        @name = name
        @age = age
        @classroom = classroom
    end
    def play_hooky
        "¯\(ツ)/¯"
    end
end

class Teacher < Person
    def initialize(name,age="Unknown",parent_permission=true,specialization)
        @parent_permission = parent_permission
        @name = name
        @age = age
        @specialization = specialization
    end
    def can_use_services?
        true
    end
end