import Vue from 'vue'
import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

import {
  faComment,
  faSpinner,
  faPaperPlane
} from '@fortawesome/free-solid-svg-icons'
import { faWhatsapp } from '@fortawesome/free-brands-svg-icons'

library.add(faComment, faSpinner, faWhatsapp, faPaperPlane)

Vue.component('fa', FontAwesomeIcon)
