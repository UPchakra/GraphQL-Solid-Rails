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
### 2. Setup Database & Seed Data

Initialize the database schema and seed data.

```bash
rails db:prepare && rails db:seed
```

### 3. Run the server
Then, run the server

```bash
rails s
```

### 4. Check graphql endpoints 

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
    title:"hello"
    content: "weafsjds"
    author: "chakra"
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
    title:"lorem chakra"
    content: "lorem ipsom"
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
    id: 3
  }) {
    success
  }
}
```

### 5. Solid Caching Implementation

This project implements solid caching to improve performance. Caching is implemented for retrieving blog posts, which helps reduce database load and speeds up response times.

---

© Author: Chakra Timilsina
