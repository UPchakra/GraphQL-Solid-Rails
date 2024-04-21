## Assignment

This repository provides a starter kit for developing APIs using Ruby on Rails. It includes all the latest and greatest gems to kickstart your API development.

### Tech Stack

Framework: Ruby on Rails

## Getting Started

### 1. Setup Development Environment
Install the IDE or relevant ruby versions and gems.

```bash
bundle install
```
### 2. Setup Database 

Initialize the database schema 

```bash
rails db:prepare
```

### 3. Run the server
Then, run the server

```bash
rails s
```

### 4. Run the Test Cases
To run the test cases, execute the following command in your terminal

```bash
rspec spec
```
OR
```bash
rspec spec/graphql/blog_post_api_graphql/post/test_mutation/posts_mutation_spec.rb
rspec spec/graphql/blog_post_api_graphql/post/test_query/posts_query_spec.rb
```
### 5. Check graphql endpoints 

Access the GraphQL dashboard to interact with the API:
**Graphql Docs:** [http://127.0.0.1:3000/graphiql]

The GraphQL dashboard provides mutation and query examples for managing posts.

**Graphql Docs:** 

1) Retrieve All Posts
```bash
query{
  posts{
    id
    title
    content
    author
  }
}
```

2) Retrieve Post by ID

```bash
query{
  post(id:1){
    id
    title
    content
    author
  }
} 
```

3) Create Post

```bash
mutation{
postCreate(input:{
  post:{
    title: "test"
    content: "lorem ipsum"
    author: "chakra timilsina"
  }
}) {
  post{
    id
    title
  }
}
}
```
4) Update Post
 
```bash
mutation{
postUpdate(input:{
  id:3
  post:{
    title: "testing update"
    content: "lorem ipsom update"
    author: "chakra up"
  }
}) {
  post{
    id
    title
    content
    author
  }
}
}
```

5) Delete Post

```bash
mutation {
  postDelete(input: {
    id: 1
  }) {
    success
  }
}
```

### 6. Solid Caching Implementation

This project implements solid caching to improve performance. Caching is implemented for retrieving blog posts, which helps reduce database load and speeds up response times.

### Why Use Solid Cache?

In the context of a Rails API development, solid caching offers several benefits:

1. **Improved Performance**: By caching frequently accessed data, such as blog posts in our case, we can reduce the number of database queries and speed up response times for API requests. This leads to a better user experience and scalability of the application.

2. **Reduced Database Load**: Caching helps alleviate the load on the database server by serving cached data instead of querying the database for every request. This can result in lower server costs and better resource utilization.

3. **Enhanced Scalability**: As the application scales and handles more concurrent users, solid caching ensures that the system can handle increased traffic efficiently without sacrificing performance.

### Implementation Details

In this Rails API starter kit, solid caching is implemented for retrieving blog posts. When a request is made to fetch blog posts, the API checks if the requested data is available in the cache. If it's present, the cached data is returned directly, bypassing the need to query the database. If the data is not cached or if the cache is stale, the API fetches the data from the database, caches it for future use, and then returns the response.

#### Fragment Caching

Fragment caching is used to cache individual components or fragments of a webpage or API response. In our case, fragment caching may be employed to cache specific attributes of a blog post, such as its title, content, and author, allowing for granular caching and efficient utilization of cache resources.

### Conclusion

Solid caching is a crucial optimization technique for Rails API development, offering significant performance improvements and scalability benefits. By intelligently caching frequently accessed data and employing cache invalidation strategies, we can build robust and efficient APIs that deliver a seamless user experience.

### Work done

- Setup Project Environment: Dependencies and configurations set up for Ruby on Rails development.

- GraphQL Implementation: Mutations for CRUD operations on blog posts And Queries to retrieve all posts and individual posts by ID.

- RSpec Testing: Comprehensive RSpec tests ensure correctness of GraphQL mutations and queries. Provides robust test coverage for API endpoints.

- Solid Cache Implementation: Caching mechanism implemented to improve API performance. Cache used for frequently accessed data like blog posts. Cache invalidation strategies applied for data consistency.

- Documentation and Instructions: Detailed README file created to guide .
---

© Author: Chakra Timilsina
