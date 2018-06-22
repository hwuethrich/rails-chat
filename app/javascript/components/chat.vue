<template lang="pug">
  .chat
    message-list.mb-4
    message-input
</template>

<script>
  import MessageList from 'components/MessageList.vue'
  import MessageInput from 'components/MessageInput.vue'

  export default {
    name: 'Chat',

    components: {
      MessageList,
      MessageInput
    }
  }
</script>
