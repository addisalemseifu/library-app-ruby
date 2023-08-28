class Teacher < Person
  def initialize(name, age = 'Unknown', parent_permission: true, specialization:) # rubocop:disable Style/KeywordParametersOrder
    @parent_permission = parent_permission
    @name = name
    @age = age
    @specialization = specialization
    @id = 0
    super
  end

  def can_use_services?
    true
  end
end
