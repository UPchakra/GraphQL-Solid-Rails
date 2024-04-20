# frozen_string_literal: true

require 'rails_helper'

describe 'blog Posts Mutations', type: :request do # rubocop:disable Metrics/BlockLength
    describe 'Create /posts' do
      context 'When the params are invalid' do
        before do
          FactoryBot.create(:blog_post)
          graphql_query = <<~GQL
            mutation{
                postCreate(input:{
                    post:{
                        title:#{Faker::Alphanumeric.alphanumeric(number: 16)}
                        content:414
                        author:123434
                    }
                }){
                  post{
                    title
                    content
                    author
                    }
                }
            }
          GQL
          gql(graphql_query)
        end

        it 'Returns a unprocessable entity status' do
          errors = api_response['errors']
          expect(errors).not_to be_nil
        end
      end

      context 'When the params are valid' do
        before do
          graphql_query = <<~GQL
            mutation {
              postCreate(input: {
                post: {
                  title: "#{Faker::Name.name}",
                  content: "#{Faker::Lorem.sentence}",
                  author: "#{Faker::Name.name}"
                }
              }) {
                post {
                  id
                  title
                  content
                  author
                }
              }
            }
          GQL
      
          gql(graphql_query)
        end
      
        it 'Returns the created status' do
          expect(response).to have_http_status :ok
        end
      
        it 'Returns non-empty response' do
          expect(api_response).not_to be_nil
        end
      end
    end

    describe 'DELETE Mutation' do
      before do
        post_id = FactoryBot.create(:blog_post).id
        graphql_query = <<~GQL
          mutation{
              postDelete(input:{
                  id:"#{post_id}"
              }){
                  success
              }
          }
        GQL
        gql(graphql_query)
      end

      it 'Delete blog Post' do
        expect(response).to have_http_status :ok
      end
    end

    describe 'UPDATE Mutation' do
      before do
        post_id = FactoryBot.create(:blog_post).id
    
        graphql_query = <<~GQL
          mutation {
            postUpdate(input: {
              id: "#{post_id}",
              post: {
                title: "test1",
                author: "#{Faker::Name.name}" 
              }
            }) {
              post {
                title
              }
            }
          }
        GQL
    
        gql(graphql_query)
      end
    
      it 'returns a successful response' do
        expect(response).to have_http_status(:ok)
      end
    end

end
