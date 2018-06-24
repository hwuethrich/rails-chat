/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

// Vue Setup
import Vue from 'vue'
import App from '../layout/App.vue'

// Styles
import '../styles/application.scss'

import '../initializers/bootstrap'
import '../initializers/fontawesome'
import { apolloProvider } from '../initializers/apollo'
import { router } from '../initializers/router'
import '../initializers/vue-resize'

// Filters
import '../filters/datetime'

// Disable production tip on console
Vue.config.productionTip = false

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#app',
    router,
    components: { App },
    provide: apolloProvider.provide(),
    render: h => h(App)
  })
})
