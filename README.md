### Ruby Version  `2.5.1p57`
### Rails Vsersion  `5.2.4.4`

### mutation create user
    mutation {
      createUser(input:{
        name: "asdsadad"
        email: "asdsadaddsadad"
      })
      {
        user{
          id
          name
          posts {
            body
          }
        }
        errors
      }
    }

### query users && post date
    query {
      users {
        id
        name
        email
        posts {
          title
          body
        }
      }
    }

### query user(id:) && post

    query {
      user(id: 1) {
        id
        name
        email
        posts {
          title
          body
        }
      }
    }
