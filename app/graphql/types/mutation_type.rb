Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createLink, function: Resolvers::CreateLink.new
  field :createVote, function: Resolvers::CreateVote.new
  field :createUser, function: Resolvers::CreateUser.new
  field :signinUser, function: Resolvers::SignInUser.new
  field :deleteLink, function: Mutations::DeleteLink.new
  field :deleteVote, function: Mutations::DeleteVote.new

end
