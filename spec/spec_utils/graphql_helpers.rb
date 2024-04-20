# frozen_string_literal: true

module GraphqlHelpers
  def gql(graphql_query)
    post('/graphql', params: { query: graphql_query })

    JSON.parse(response.body)
  end
end
