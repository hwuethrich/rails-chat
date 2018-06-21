import gql from 'graphql-tag'

export const MESSAGES_QUERY = gql`
  query MessagesQuery {
    messages {
      id
      text
    }
  }
`
