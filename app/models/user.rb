class User < ApplicationRecord
  enum uf: CS.states(:br)
end
