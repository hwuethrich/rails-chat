<template lang="pug">
  #app
    b-container
      h1 Hello World
      chat
</template>

<script>
  // import Sidebar from '../layout/Sidebar'
  // import Toolbar from '../layout/Toolbar'
  import Chat from 'components/Chat.vue'

  export default {
    components: {
      // Sidebar,
      // Toolbar,
      Chat
    }
  }
</script>

<style lang="scss">
body {
  padding-top: 3em;
}
</style>
