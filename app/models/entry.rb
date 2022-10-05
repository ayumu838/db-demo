class Entry < ApplicationRecord
  belongs_to  :member
  belongs_to :work, foreign_key: :work_id
end
