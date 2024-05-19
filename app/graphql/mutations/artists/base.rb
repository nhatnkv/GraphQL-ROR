module Mutations::Artists
  module Base
    extend ActiveSupport::Concern

    included do
      field :create_artist, mutation: CreateArtist
    end
  end
end