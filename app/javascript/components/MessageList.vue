<template lang="pug">
  b-list-group
    message-item(v-for='msg in messages' :key='msg.id', :message='msg')
    // b-list-group-item(v-if="loading" variant="light") Loading ...
</template>

<script>
  import { MESSAGES_QUERY, NEW_MESSAGE_SUBSCRIPTION } from '../graphql/queries'
  import MessageItem from 'components/MessageItem.vue'

  export default {
    name: 'MessageList',
    components: { MessageItem },

    data() {
      return {
        messages: [],
        loading: 0
      }
    },

    mounted() {
      this.$apollo
        .subscribe({ query: NEW_MESSAGE_SUBSCRIPTION })
        .subscribe(this.refresh)
    },

    methods: {
      refresh() {
        this.$apollo.queries.messages.refetch()
      }
    },

    apollo: {
      messages: {
        query: MESSAGES_QUERY
        // subscribeToMore: [
        //   {
        //     document: NEW_MESSAGE_SUBSCRIPTION,
        //     updateQuery: (previous, { subscriptionData }) => {
        //       let xxx = this
        //       this.apollo.queries.messages.refetch()
        //       return previous

        //       //console.log(previous, subscriptionData)

        //       // const mergedMessages = [
        //       //   subscriptionData.data.newMessage,
        //       //   ...previous.messages
        //       // ]

        //       // const result = {
        //       //   ...previous,
        //       //   messages: mergedMessages
        //       // }

        //       // console.log(result)

        //       // return result
        //     }
        // }
        // ]
      }
    }
  }
</script>
