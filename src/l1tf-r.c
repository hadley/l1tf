#include <R.h>
#include <Rinternals.h>

#include "l1tf.h"

SEXP l1tf_R(SEXP y, SEXP lambda_, SEXP debug_) {
  double lambda = asReal(lambda_);
  int debug = asLogical(debug_);
  if (TYPEOF(y) != REALSXP) {
    error("y must be a numeric vector");
  }

  int n = length(y);
  SEXP out = PROTECT(allocVector(REALSXP, n));

  // int l1tf(const int n, const double *y, const double lambda, double *x);
  l1tf(n, REAL(y), lambda, REAL(out), debug);

  UNPROTECT(1);
  return out;
}


SEXP l1tf_lambdamax_R(SEXP y, SEXP debug_) {
  int debug = asLogical(debug_);
  if (TYPEOF(y) != REALSXP) {
    error("y must be a numeric vector");
  }

  // double l1tf_lambdamax(const int n, double *y);
  double max = l1tf_lambdamax(length(y), REAL(y), debug);

  return ScalarReal(max);
}
