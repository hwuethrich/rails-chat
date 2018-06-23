<template>
  <div
    class="scroll-container"
    @scroll="onScroll">
    <slot />
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

    computed: {},

    mounted() {
      this.observer = new MutationObserver(this.onSlotChange)

      this.observer.observe(this.$el, {
        attributes: true,
        childList: true,
        characterData: true,
        subtree: true
      })
    },

    beforeDestroy() {
      this.observer.disconnect()
    },

    methods: {
      onSlotChange() {
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
}
</style>
