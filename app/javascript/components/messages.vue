<template lang="pug">
  b-list-group
    b-list-group-item(v-for='msg in messages')
      | {{ msg.text }}
</template>

<script>
  export default {
    props: {
      messages: {
        type: Array,
        default: () => []
      }
    },

    methods: {
      addMessage(msg) {
        this.messages.append({ text: msg })
      }
    }
  }
</script>
