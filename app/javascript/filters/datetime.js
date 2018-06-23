import Vue from 'vue/dist/vue.esm'
import moment from 'moment'

Vue.filter('datetime', value => {
  if (value) {
    return moment(String(value)).format('MM/DD/YYYY hh:mm')
  }
})

Vue.filter('fromNow', value => {
  if (value) {
    return moment(String(value)).fromNow()
  }
})
