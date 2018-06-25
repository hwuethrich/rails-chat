<template>
  <div class="messagem mb-4">
    <small
      v-if="message.user.system"
      class="d-block text-center text-muted">
      <i>{{ message.text }}</i>
    </small>
    <b-card
      v-else
      class="border-0 shadow-sm">
      <div class="d-flex justify-content-between">
        <small class="text-muted">
          {{ message.user.name }}
        </small>
        <small class="text-muted">
          <fa :icon="clockIcon" />
          <time-ago
            :value="message.createdAt"
            :interval="10"
          />
        </small>
      </div>
      {{ message.text }}
    </b-card>

  </div>


</template>

<script>
  import TimeAgo from 'components/TimeAgo.vue'
  import { faClock } from '@fortawesome/free-regular-svg-icons'

  export default {
    name: 'MessageItem',
    components: { TimeAgo },

    props: {
      message: { type: Object, required: true }
    },

    data() {
      return { clockIcon: faClock }
    }
  }
</script>
