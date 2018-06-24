<template lang="pug">
  .message-list
    message-item(v-for='msg in messages' :key='msg.id', :message='msg')
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

    // mounted() {
    //   this.$apollo
    //     .subscribe({ query: NEW_MESSAGE_SUBSCRIPTION })
    //     .subscribe(this.refetch)
    // },

    methods: {
      refetch() {
        console.log('refetch')
        this.$apollo.queries.messages.refetch()
      }
    },

    apollo: {
      messages: {
        query: MESSAGES_QUERY,
        subscribeToMore: [
          {
            document: NEW_MESSAGE_SUBSCRIPTION,
            // Mutate the previous result
            updateQuery: (previousResult, { subscriptionData }) => {
              return {
                messages: [
                  ...previousResult.messages,
                  subscriptionData.data.newMessage
                ]
              }
            }
          }
        ]
      }
    }
  }
</script>
