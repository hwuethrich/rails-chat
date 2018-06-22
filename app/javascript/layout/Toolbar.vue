<template>
  <v-toolbar color="red darken-4" dark fixed app>
    <!-- <v-toolbar-side-icon @click.stop="drawer = !drawer"></v-toolbar-side-icon> -->
    <v-toolbar-title>
      <v-icon>chat</v-icon>
      Awesome Chat
    </v-toolbar-title>
  </v-toolbar>
</template>

<script>
  export default {
    name: 'Blah',
    props: {
      drawer: { type: Boolean, default: false }
    }
  }
</script>
