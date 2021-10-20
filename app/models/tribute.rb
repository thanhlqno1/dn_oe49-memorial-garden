class Tribute < ApplicationRecord
  belongs_to :contribution
  belongs_to :rep_story, class_name: Tribute.name, optional: true
  has_many :rep_tributes, class_name: Tribute.name,
           foreign_key: :rep_tribute_id, dependent: :destroy

  validates :eulogy, presence: true,
            length: {maximum: Settings.length.digit_200}
end
