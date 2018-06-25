import Vue from 'vue'
import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

import {
  faComment,
  faSpinner,
  faPaperPlane,
  faBullhorn,
  faExclamationCircle
} from '@fortawesome/free-solid-svg-icons'

import { faWhatsapp } from '@fortawesome/free-brands-svg-icons'

library.add(
  faComment,
  faSpinner,
  faWhatsapp,
  faPaperPlane,
  faBullhorn,
  faExclamationCircle
)

Vue.component('fa', FontAwesomeIcon)
