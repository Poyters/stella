defmodule Structure.Model.Chat do
  defstruct [:first_name, :id, :last_name, :photo, :title, :type, :username]
end

defmodule Structure.Model.User do
  defstruct [:first_name, :id, :last_name, :username]
end

defmodule Structure.Model.Message do
  defstruct [
    :audio,
    :caption,
    :channel_chat_created,
    :chat,
    :contact,
    :date,
    :delete_chat_photo,
    :document,
    :edit_date,
    :entities,
    :forward_date,
    :forward_from,
    :forward_from_chat,
    :from,
    :group_chat_created
  ]
end

defmodule StructTest do
  use ExUnit.Case
  doctest Struct


  test "convert nesteded nested struct to map" do
    assert Struct.to_map(%{
      callback_query: nil,
      channel_post: nil,
      chosen_inline_result: nil,
      edited_message: nil,
      inline_query: nil,
      message: %Structure.Model.Message{
        audio: nil,
        caption: nil,
        channel_chat_created: nil,
        chat: %Structure.Model.Chat{
          first_name: "Christian",
          id: 543_211_234,
          last_name: "Tovar",
          photo: nil,
          title: nil,
          type: "private",
          username: "ChristianTovar"
        },
        contact: nil,
        date: 1_562_605_521,
        delete_chat_photo: nil,
        document: nil,
        edit_date: nil,
        entities: nil,
        forward_date: nil,
        forward_from: nil,
        forward_from_chat: nil,
        from: %Structure.Model.User{
          first_name: "Christian",
          id: 543_211_234,
          last_name: "Tovar",
          username: "ChristianTovar"
        },
        group_chat_created: nil
      },
      update_id: 412_827_321
    }) == %{
      callback_query: nil,
      channel_post: nil,
      chosen_inline_result: nil,
      edited_message: nil,
      inline_query: nil,
      message: %{
        audio: nil,
        caption: nil,
        channel_chat_created: nil,
        chat: %{
          first_name: "Christian",
          id: 543211234,
          last_name: "Tovar",
          photo: nil,
          title: nil,
          type: "private",
          username: "ChristianTovar"
        },
        contact: nil,
        date: 1562605521,
        delete_chat_photo: nil,
        document: nil,
        edit_date: nil,
        entities: nil,
        forward_date: nil,
        forward_from: nil,
        forward_from_chat: nil,
        from: %{
          first_name: "Christian",
          id: 543211234,
          last_name: "Tovar",
          username: "ChristianTovar"
        },
        group_chat_created: nil
      },
      update_id: 412827321
    }
  end

  test "convert struct to map" do
    assert Struct.to_map(%{
      update_id: 412_827_321
    }) == %{
      update_id: 412827321
    }
  end

  test "convert empty struct to map" do
    assert Struct.to_map(%{}) == %{}
  end

  test "convert fully empty struct to map" do
    assert Struct.to_map() == %{}
  end

  test "convert nil struct to map" do
    assert Struct.to_map(nil) == %{}
  end
end
