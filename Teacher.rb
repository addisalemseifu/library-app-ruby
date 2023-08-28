class Teacher < Person
    def initialize(name,age="Unknown",parent_permission=true,specialization)
        @parent_permission = parent_permission
        @name = name
        @age = age
        @specialization = specialization
        @id;
    end
    def can_use_services?
        true
    end
end