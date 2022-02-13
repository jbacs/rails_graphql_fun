## GraphiQL query editor
```
http://localhost:3000/graphiql
```

## Pull all tour_guides
```
{
  tourGuides {
    id
    name
    email
    reviewsCount
  }
}
```

## Pull specific tour_guide
```
{
  tourGuide(id:2) {
    id
    name
    email
    reviewsCount
    reviews {
      id
      rate
      comment
    }
  }
}
```

## Insert new tour_guide record

```
mutation {
  createTourGuide(input: {
    name: "Wala Ilhe"
    email: "wala.ilhe@test.com"
  }) {
    tourGuide {
      id
      name
      email
      reviews {
        id
      }
    }
    errors
  }
}
```
