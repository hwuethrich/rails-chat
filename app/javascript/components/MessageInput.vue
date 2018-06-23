<template lang="pug">
  b-form(@submit.prevent="sendMessage" class="d-flex flex-row")
    b-input(v-model="text" autocomplete="off" placeholder="Say something..." required)
</template>

<script>
  import { SEND_MESSAGE_MUTATION } from '../graphql/queries'

  export default {
    name: 'MessageInput',

    data() {
      return {
        text: ''
      }
    },

    methods: {
      sendMessage() {
        const { text } = this.$data

        this.$apollo.mutate({
          mutation: SEND_MESSAGE_MUTATION,
          variables: {
            text
          }
        })

        this.$emit('sent')
        this.text = ''
      }
    }
  }
</script>
