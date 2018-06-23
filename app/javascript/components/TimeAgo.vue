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
        this.timeFromNow = moment(this.value).fromNow()
      }
    }
  }
</script>
