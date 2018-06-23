<template>
  <div
    id="app"
    class="d-flex flex-column">
    <nav-bar />
    <div class="content">
      <router-view />
    </div>
  </div>
</template>

<script>
  import NavBar from 'components/NavBar.vue'

  export default {
    components: { NavBar }
  }
</script>


<style lang="scss">
#app {
  height: 100vh;

  .content {
    flex: 1;
    overflow: auto;
  }
}
</style>

