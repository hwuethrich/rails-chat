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
        const age = moment().diff(time, 'seconds')

        if (age < 5) {
          this.timeFromNow = 'just now'
        } else {
          this.timeFromNow = time.fromNow()
        }
      }
    }
  }
</script>
