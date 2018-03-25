module Makers
  def makes
    %w{ Honda Ford Toyota Chevrolet Volvo }
  end
end
class Car
  extend Makers
end
p Car.singleton_class.ancestors
