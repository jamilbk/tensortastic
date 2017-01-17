defmodule Tensortastic do
  @moduledoc """
  Experimental Tensorflow bindings for Elixir.

  Disclaimer: This project is a WIP and nothing but `TF_Version()` is
  implemented yet.
  """

  @on_load :init

  @doc """
  Loads the NIF file, mapping its functions to this Elixir module
  """
  def init do
    path = :filename.join(:code.priv_dir(:tensortastic), "tensortastic_nif")
    :ok = :erlang.load_nif(path, 0)
  end

  @doc """
  Returns the linked libtensorflow.so version number as a char list
  """
  def tf_version do
    raise "NIF tf_version/0 not implemented"
  end
end
