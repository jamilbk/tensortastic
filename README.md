# Tensortastic

**Experimental Tensorflow bindings for Elixir**

Disclaimer: This is pre-alpha software and many parts are not functional. It's
highly recommended you do not use this in a production environment.

## Installation

Steps:
  1. Set LIBTENSORFLOW_PATH to the location containing libtensorflow.so version
    0.12.1. Building tensorflow is not covered here:

		```shell
		$ export LIBTENSORFLOW_PATH=/usr/lib
		```

  2. Add `tensortastic` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:tensortastic, "~> 0.0.3"}]
    end
    ```

  3. Run `mix deps.get`
  4. Ensure `tensortastic` is started before your application:

    ```elixir
    def application do
      [applications: [:tensortastic]]
    end
    ```
