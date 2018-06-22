import Vue from 'vue/dist/vue.esm'
import VueApollo from 'vue-apollo'
import { ApolloClient } from 'apollo-client'
// import { ApolloLink } from 'apollo-link'
// import { HttpLink } from 'apollo-link-http'
import { InMemoryCache } from 'apollo-cache-inmemory'

import ActionCable from 'actioncable'
import ActionCableLink from 'graphql-ruby-client/subscriptions/ActionCableLink'

Vue.use(VueApollo)

const cable = ActionCable.createConsumer()

// const httpLink = new HttpLink({
//   uri: '/graphql',
//   credentials: 'include'
// })

const cableLink = new ActionCableLink({ cable })

// const hasSubscriptionOperation = ({ query: { definitions } }) => {
//   return definitions.some(
//     ({ kind, operation }) =>
//       kind === 'OperationDefinition' && operation === 'subscription'
//   )
// }

// const link = ApolloLink.split(
//   hasSubscriptionOperation,
//   new ActionCableLink({ cable }),
//   httpLink
// )

export const apolloClient = new ApolloClient({
  link: cableLink,
  cache: new InMemoryCache(),
  connectToDevTools: true
})

export const apolloProvider = new VueApollo({
  defaultClient: apolloClient,
  defaultOptions: {
    $loadingKey: 'loading'
  }
})
