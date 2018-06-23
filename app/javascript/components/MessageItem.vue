<template>
  <b-card class="mb-4 border-0">
    <div class="d-flex justify-content-between">
      <small class="text-muted">
        P. Muster
      </small>
      <small class="text-muted">
        <fa :icon="clockIcon" />
        <time-ago
          :value="message.createdAt"
          :interval="60"
        />
      </small>
    </div>
    {{ message.text }}
  </b-card>
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
