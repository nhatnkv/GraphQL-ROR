module Resolvers
  class ArtistsResolver < BaseResolver
    def resolve
      Artist.all
    end
  end
end