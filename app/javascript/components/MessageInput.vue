<template>
  <b-form
    class="d-flex flex-row"
    @submit.prevent="sendMessage">
    <b-input
      ref="input"
      v-model="newMessage"
      autocomplete="off"
      placeholder="Say something..."
      required/>
    <b-btn
      :disabled="!canSend"
      variant="link"
      @click="sendMessage">
      <fa
        icon="paper-plane"
        size="lg"/>
    </b-btn>
  </b-form>
</template>


<script>
  import { SEND_MESSAGE_MUTATION } from '../graphql/queries'

  export default {
    name: 'MessageInput',

    data() {
      return {
        newMessage: ''
      }
    },

    computed: {
      canSend() {
        return this.newMessage != ''
      }
    },

    methods: {
      sendMessage() {
        this.$apollo.mutate({
          mutation: SEND_MESSAGE_MUTATION,
          variables: {
            text: this.newMessage
          }
        })

        this.newMessage = ''
        this.$refs.input.$el.focus()
      }
    }
  }
</script>
