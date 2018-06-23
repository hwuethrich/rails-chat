import Vue from 'vue/dist/vue.esm'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

import Chat from 'views/Chat.vue'

export const routes = [{ path: '/', component: Chat }]

export const router = new VueRouter({
  mode: 'history',
  routes
})
