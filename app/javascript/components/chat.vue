<template lang="pug">
  .chat
    message-list.mb-4

    b-form(@submit="addMessage")
      b-input-group
        b-input(v-model="message" autocomplete="off" required)

        b-input-group-append
          b-btn(type="submit" variant="primary")
            | Send
</template>

<script>
  import MessageList from 'components/MessageList.vue'

  export default {
    name: 'Chat',

    components: {
      MessageList
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
