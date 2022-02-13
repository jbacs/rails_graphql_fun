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
