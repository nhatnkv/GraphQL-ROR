module Queries::Artists
  module Base
    extend ActiveSupport::Concern

    included do
      field :artists, [Types::ArtistType], null: false, resolver: Resolvers::ArtistsResolver
    end
  end
end