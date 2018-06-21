<template lang="pug">
  .chat
    messages.mb-4(:messages="messages")

    b-form(@submit="addMessage")
      b-input-group
        b-input(v-model="message" autocomplete="off" required)

        b-input-group-append
          b-btn(type="submit" variant="primary")
            | Send
</template>

<script>
  import Messages from 'components/messages.vue'

  export default {
    name: 'Chat',

    components: {
      Messages
    },

    data() {
      return {
        message: '',
        messages: []
      }
    },

    methods: {
      addMessage(evt) {
        evt.preventDefault()

        this.messages.push({ text: this.message })
        this.message = ''
      }
    }
  }
</script>
