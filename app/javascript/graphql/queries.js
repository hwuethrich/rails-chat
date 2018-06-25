import gql from 'graphql-tag'

export const MESSAGES_QUERY = gql`
  query MessagesQuery {
    messages {
      id
      text
      createdAt
      user {
        name
        system
      }
    }
  }
`
export const SEND_MESSAGE_MUTATION = gql`
  mutation SendMessageMutation($text: String!) {
    sendMessage(text: $text) {
      message {
        id
        text
        createdAt
        user {
          name
          system
        }
      }
    }
  }
`
export const NEW_MESSAGE_SUBSCRIPTION = gql`
  subscription Messages {
    newMessage {
      id
      text
      createdAt
      user {
        name
        system
      }
    }
  }
`
