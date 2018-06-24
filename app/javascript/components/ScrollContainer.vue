<template>
  <div
    class="scroll-container"
    @scroll="onScroll">
    <slot />
    <resize-observer @notify="onResize" />
  </div>
</template>

<script>
  export default {
    data() {
      return {
        observer: null,
        bottom: 0
      }
    },

    mounted() {
      this.observer = new MutationObserver(this.onContentChange)

      const options = {
        attributes: true,
        childList: true,
        characterData: true,
        subtree: true
      }

      // const head = document.querySelector('head')
      // this.observer.observe(head, options)
      this.observer.observe(this.$el, options)
    },

    beforeDestroy() {
      this.observer.disconnect()
    },

    methods: {
      onContentChange() {
        this.onResize()
      },

      onResize() {
        if (this.bottom === 0) {
          this.scrollToBottom()
        }
      },

      onScroll() {
        const top = this.$el.scrollTop,
          height = this.$el.scrollHeight,
          offset = this.$el.offsetHeight
        this.bottom = top - height + offset
      },

      scrollToBottom() {
        this.$el.scrollTop = this.$el.scrollHeight
      }
    }
  }
</script>


<style lang="scss" scoped>
.scroll-container {
  flex: 1;
  overflow: auto;
  -webkit-overflow-scrolling: touch;
}
</style>
