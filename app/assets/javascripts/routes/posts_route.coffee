EmberTest.PostsRoute = Ember.Route.extend
  model: ->
    EmberTest.Post.find()
