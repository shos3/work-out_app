class Kg < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1' },{ id: 3, name: '2' },{ id: 4, name: '3' },{ id: 4, name: '4' },{ id: 4, name: '5' },
    { id: 4, name: '6' } ,{ id: 4, name: '7' },{ id: 4, name: '8' },{ id: 4, name: '9' },{ id: 4, name: '10' }
    ]
  include ActiveHash::Associations
  has_many :plans
end