class Pet
  attr_accessor :name
  attr_reader :species

  # class varables
  @@all_pets = []

  def initialize(name, species)
    @name = name
    @species = species
    @@all_pets << self
  end

  def display_info
    puts "I am a #{@species} named #{@name}."
  end

  def is_cat?
    @species == 'Cat'
  end

  def self.list_all_pets
    @@all_pets.each do |pet|
      puts "Pet #{pet.name} with species #{pet.species}."
    end
  end
end
