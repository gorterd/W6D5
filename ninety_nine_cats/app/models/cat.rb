class Cat < ApplicationRecord

    VALID_COLORS = ['black', 'orange', 'grey', 'brindle', 'cream', 'purple', 'brown']
    VALID_SEXES = ['M', 'F']

    validates :sex, inclusion: { in: VALID_SEXES }
    validates :color, inclusion: { in: VALID_COLORS }
    validates :birth_date, :name, :color, :sex, :description, presence: true


    def age
        Date.today.year - birth_date.year
    end

end