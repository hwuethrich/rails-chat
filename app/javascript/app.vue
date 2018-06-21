<template lang="pug">
  #app
    b-container
      h1 Hello World
      chat
</template>

<script>
  import Chat from 'components/chat.vue'

  export default {
    components: {
      Chat
    }
  }
</script>
