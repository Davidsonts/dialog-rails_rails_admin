class User < ApplicationRecord
  enum uf: CS.states(:br)
  enum sex: [:male :female :other]
end
