<template>
  <div
    id="chat-view"
    class="bg-light h-100 d-flex flex-column">
    <scroll-container
      ref="history"
      class="chat-history pt-4">
      <b-container>
        <message-list />
      </b-container>
    </scroll-container>

    <div class="chat-footer py-3">
      <b-container>
        <message-input @sent="scrollToBottom()" />
      </b-container>
    </div>
  </div>
</template>


<script>
  import ScrollContainer from 'components/ScrollContainer.vue'
  import MessageInput from 'components/MessageInput.vue'
  import MessageList from 'components/MessageList.vue'

  export default {
    name: 'Chat',

    components: {
      MessageList,
      MessageInput,
      ScrollContainer
    },

    methods: {
      scrollToBottom() {
        this.$refs.history.scrollToBottom()
      }
    }
  }
</script>

<style lang="scss">
.chat-footer {
  background-color: #ced4da;
  z-index: 1000;
}
</style>


