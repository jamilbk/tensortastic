# Tensortastic

**Experimental Tensorflow bindings for Elixir**

Disclaimer: This project is a WIP and nothing but `TF_Version()` is implemented
yet.

## Installation

Requirements:
1. A built libtensorflow.so 0.12.1 for your platform must be in `priv/`.
Building tensorflow is not covered here.

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `tensortastic` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:tensortastic, "~> 0.0.1-prealpha"}]
    end
    ```

  2. Ensure `tensortastic` is started before your application:

    ```elixir
    def application do
      [applications: [:tensortastic]]
    end
    ```
