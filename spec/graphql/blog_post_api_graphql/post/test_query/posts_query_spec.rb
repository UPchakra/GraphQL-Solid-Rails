# frozen_string_literal: true

require 'rails_helper'

describe Post::Queries::PostQueries, type: :request do
    describe 'Query blog posts' do
      before do
        FactoryBot.create(:blog_post)
        graphql_query = <<~GQL
          query {
            posts {
              id
              title
              content
              author
            }
          }
        GQL
        gql(graphql_query)
      end

      it 'Returns the blog post data' do
        expect(response).to have_http_status :ok
      end

      it 'return the list of blog posts data' do
        data = api_response['data']['posts']
        expect(data.size).to eq 1
      end
    end

    describe 'Query blog post by id' do
      before do
        post_id = FactoryBot.create(:blog_post).id
        graphql_query = <<~GQL
          query {
            post(id: "#{post_id}") {
              id
            }
          }
        GQL
        gql(graphql_query)
      end

      it 'Returns the blog post data' do
        expect(response).to have_http_status :ok
      end

      it 'return the list of blog post data' do
        data = api_response['data']['post']
        expect(data.size).to eq 1
      end
    end

end
