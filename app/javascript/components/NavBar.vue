<template>
  <b-navbar
    type="dark"
    variant="success">
    <b-container>
      <b-navbar-brand>
        <fa
          :icon="['fab', 'whatsapp']"
          size="lg" />
        Whazz App
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
