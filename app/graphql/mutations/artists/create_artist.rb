module Mutations::Artists
  class CreateArtist < Mutations::BaseMutation
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :email, String, required: true

    field :artist, Types::ArtistType, null: true
    field :errors, [String], null: false

    def resolve(first_name:, last_name:, email:, bio: nil)
      artist = Artist.new(first_name: first_name, last_name: last_name, email: email)
      if artist.save
        {
          artist: artist,
          errors: [],
        }
      else
        {
          artist: nil,
          errors: artist.errors.full_messages
        }
      end
    end
  end
end