class Task < ActiveRecord::Base
  belongs_to :category

  validates_uniqueness_of :name
  validates_presence_of   :body


# some callbacks
# before_validation :change_name
#  after_save
#  *_create
#  *_update

#  def change_name
#    self.name = "pepito"
#  end

end
