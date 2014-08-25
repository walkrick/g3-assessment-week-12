class Movie < ActiveRecord::Base

   validates :name, presence: true
   validates :year, presence: true
   validates_numericality_of :year, :on => :create
   validates :synopsis, presence: true

end