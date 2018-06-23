<template>
  <b-navbar
    type="dark"
    variant="success"
    class="shadow-sm">
    <b-container>
      <b-navbar-brand>
        <fa
          :icon="['fab', 'whatsapp']"
          size="lg" />
        WhazzApp
      </b-navbar-brand>

      <b-nav-text v-if="loading">
        <fa
          icon="spinner"
          size="lg"
          pulse />
        Loading
      </b-nav-text>
    </b-container>
  </b-navbar>
</template>

<script>
  export default {
    data() {
      return { loading: false }
    },

    mounted() {
      this.$apollo.provider.watchLoading = state => {
        this.loading = state
      }
    }
  }
</script>

<style lang="scss" scoped>
.navbar {
  z-index: 1;
}
</style>
