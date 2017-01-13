defmodule Tensortastic do
  @moduledoc """
  Experimental Tensorflow bindings for Elixir.

  Currently this is just a stub -- nothing is supported yet.
  """

  @on_load :init

  def init do
    path = :filename.join(:code.priv_dir(:tensortastic), "tensortastic_nif")
    :ok = :erlang.load_nif(path, 0)
  end

  def session do
    raise "NIF session/0 not implemented"
  end
end
