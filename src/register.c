#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* .Call calls */
extern SEXP l1tf_lambdamax_R(SEXP, SEXP);
extern SEXP l1tf_R(SEXP, SEXP, SEXP);

static const R_CallMethodDef CallEntries[] = {
    {"l1tf_lambdamax_R", (DL_FUNC) &l1tf_lambdamax_R, 2},
    {"l1tf_R",           (DL_FUNC) &l1tf_R,           3},
    {NULL, NULL, 0}
};

void R_init_l1tf(DllInfo *dll)
{
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
