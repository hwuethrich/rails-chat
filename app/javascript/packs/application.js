/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

// Styles
import 'bootstrap/scss/bootstrap'
import 'bootstrap-vue/dist/bootstrap-vue.css'

// Vue Setup
import Vue from 'vue/dist/vue.esm'
import VueApollo from 'vue-apollo'
import BootstrapVue from 'bootstrap-vue/dist/bootstrap-vue.esm'
import { ApolloClient } from 'apollo-client'
import { HttpLink } from 'apollo-link-http'
import { InMemoryCache } from 'apollo-cache-inmemory'

import '../app.scss'
import App from '../app.vue'

const apolloClient = new ApolloClient({
  link: new HttpLink({ uri: '/graphql' }),
  cache: new InMemoryCache(),
  connectToDevTools: true
})

const apolloProvider = new VueApollo({
  defaultClient: apolloClient,
  defaultOptions: {
    $loadingKey: 'loading'
  }
})

Vue.use(BootstrapVue)
Vue.use(VueApollo)

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#app',
    components: { App },
    provide: apolloProvider.provide(),
    render: h => h(App)
  })
})
