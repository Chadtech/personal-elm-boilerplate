module Types.Message exposing (Message(..))

type Message
    = UpdateField String
    | HandlePort String