defmodule MaruVersion.API.V1 do
  use Maru.Router

  version "v1"

  desc "get v1"
  params do
    requires :age,    type: Integer, values: 18..65
  end
  get do
    conn |> json(params)
  end

  mount Maru.Version.API.Shared
end
