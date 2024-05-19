# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include Queries::Artists::Base
  end
end
