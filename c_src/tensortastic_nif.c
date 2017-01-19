#include "erl_nif.h"
#include "c_api.h"

static ERL_NIF_TERM tf_version(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
  return enif_make_string(env, TF_Version(), ERL_NIF_LATIN1);
}

static ERL_NIF_TERM new_graph(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
  return enif_make_string(env, "New Graph", ERL_NIF_LATIN1);
}

static ERL_NIF_TERM new_session(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[])
{
  return enif_make_string(env, "New Session", ERL_NIF_LATIN1);
}

static ErlNifFunc nif_funcs[] =
{
  { "tf_version", 0, tf_version },
  { "new_graph", 0, new_graph },
  { "new_session", 0, new_session }
};

// No semi-colon at the end of this line because it's a macro
ERL_NIF_INIT(Elixir.Tensortastic, nif_funcs, NULL, NULL, NULL, NULL)
