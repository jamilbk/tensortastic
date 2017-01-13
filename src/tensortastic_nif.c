#include "erl_nif.h"

static ERL_NIF_TERM session(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
  return enif_make_string(env, "Hello Tensorflow world!", ERL_NIF_LATIN1);
}

static ErlNifFunc nif_funcs[] =
{
  { "session", 0, session }
};

// No semi-colon at the end of this line because it's a macro
ERL_NIF_INIT(Elixir.Tensortastic, nif_funcs, NULL, NULL, NULL, NULL)
