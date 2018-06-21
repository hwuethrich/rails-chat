<template lang="pug">
  b-list-group-item(class="d-flex align-items-center")
    b-badge(variant="primary" class="mr-2") {{message.id}}
    | {{ message.text }}
</template>

<script>
  export default {
    name: 'MessageItem',
    props: {
      message: { type: Object, required: true }
    }
  }
</script>
