class Nameable
  def correct_name
    raise NotImplementedError, 'Method not implemented'
  end
end

class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    if @nameable.correct_name.length > 10
      trimd_string = ''
      num = 0
      while num < 10
        trimd_string += @nameable.correct_name.chars[num]
        num += 1
      end
     return trimd_string
    end
    @nameable.correct_name
  end
end
