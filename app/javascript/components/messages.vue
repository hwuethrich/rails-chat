<template lang="pug">
  b-list-group
    b-list-group-item(v-for='msg in messages' :key='msg.text')
      | {{ msg.text }}
</template>

<script>
export default {
  props: {
    messages: Array
  },

  methods: {
    addMessage(msg) {
      this.messages.append({ text: msg })
    }
  }
}
</script>


<style lang="scss" scoped>
b-list-group {
  color: red;
}
</style>
