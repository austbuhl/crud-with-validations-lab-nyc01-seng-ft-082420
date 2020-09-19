class Song < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: { scope: [:artist_name, :release_year] }
    validates :artist_name, presence: true
    
    
    with_options if: :released? do |release|
        release.validates :release_year, presence: true
        release.validates :release_year, numericality: { less_than_or_equal_to: 2020}
    end
    # validates :release_year, presence: true, if: :released?
    # validates :release_year, numericality: { less_than_or_equal_to: 2020}
    def released?
        released
    end
end
