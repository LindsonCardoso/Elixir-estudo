defmodule FunctionalLangs.HackerNewsClient do
  alias Finch.Response

  def child_spec do
    {Finch,
     name: __MODULE__,
     pools: %{
       "https://hacker-news.firebaseio.com" => [size: pool_size()]
     }}
  end

  def pool_size, do: 25

  def get_item(item_id) do
    :get
    |> Finch.build("https://hacker-news.firebaseio.com/v0/item/#{item_id}.json")
    |> Finch.request(__MODULE__)
  end

  def get_child_ids(parent_item_id) do
    parent_item_id
    |> get_item()
    |> handle_parent_response()
  end

  defp handle_parent_response({:ok, %Response{body: body}}) do
    child_ids =
      body
      |> Jason.decode!()
      |> Map.get("kids")

    {:ok, child_ids}
  end

  def get_child_item(child_id) do
    child_id
    |> get_item()
    |> get_child_item_text()
  end

  defp get_child_item_text({:ok, %Response{body: body}}) do
    body
    |> Jason.decode!()
    |> case do
      %{"text" => text} -> String.downcase(text)
      _ -> ""
    end
  end

end
