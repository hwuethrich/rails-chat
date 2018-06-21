<template lang="pug">
  b-list-group
    b-list-group-item(v-if="loading" variant="light") Loading ...

    message-item(v-for='msg in messages' :key='msg.id', :message='msg')
</template>

<script>
  import { MESSAGES_QUERY } from '../queries'
  import MessageItem from 'components/MessageItem.vue'

  export default {
    name: 'MessageList',
    components: { MessageItem },

    data() {
      return {
        messages: [],
        loading: 0
      }
    },

    apollo: {
      messages: MESSAGES_QUERY
    }
  }
</script>
