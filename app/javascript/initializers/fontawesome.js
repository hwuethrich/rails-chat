import Vue from 'vue/dist/vue.esm'
import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

import { faComment, faSpinner } from '@fortawesome/free-solid-svg-icons'
import { faWhatsapp } from '@fortawesome/free-brands-svg-icons'

library.add(faComment, faSpinner, faWhatsapp)

Vue.component('fa', FontAwesomeIcon)
