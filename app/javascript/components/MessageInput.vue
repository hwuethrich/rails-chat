<template lang="pug">
  b-form(@submit="sendMessage")
    b-input-group
      b-input(v-model="text" autocomplete="off" required)

      b-input-group-append
        b-btn(type="submit" variant="primary")
          | Send
</template>

<script>
  import { SEND_MESSAGE_MUTATION } from '../queries'

  export default {
    name: 'MessageInput',

    data() {
      return {
        text: ''
      }
    },

    methods: {
      sendMessage(evt) {
        evt.preventDefault()

        const { text } = this.$data

        this.$apollo.mutate({
          mutation: SEND_MESSAGE_MUTATION,
          variables: {
            text
          }
        })

        this.text = ''
      }
    }
  }
</script>
