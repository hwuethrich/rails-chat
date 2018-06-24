<template>
  <span>{{ timeFromNow }}</span>
</template>

<script>
  import moment from 'moment'

  export default {
    props: {
      value: { type: [String, Date], required: true },
      interval: { type: Number, default: 10 }
    },

    data() {
      return {
        timeFromNow: null
      }
    },

    created() {
      this.update()
      setInterval(this.update, this.interval * 1000)
    },

    destroyed() {
      clearInterval(this.update)
    },

    methods: {
      update() {
        const time = moment(this.value)
        if (time.diff(moment.now(), 'seconds') < 5) {
          this.timeFromNow = 'Just now'
        } else {
          this.timeFromNow = time.fromNow()
        }
      }
    }
  }
</script>
