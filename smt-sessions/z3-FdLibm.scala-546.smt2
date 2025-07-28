; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2943 () Bool)

(assert start!2943)

(declare-fun b_free!9 () Bool)

(declare-fun b_next!9 () Bool)

(assert (=> start!2943 (= b_free!9 (not b_next!9))))

(declare-fun tp!14 () Bool)

(declare-fun b_and!29 () Bool)

(assert (=> start!2943 (= tp!14 b_and!29)))

(declare-fun res!12875 () Bool)

(declare-fun e!9069 () Bool)

(assert (=> start!2943 (=> (not res!12875) (not e!9069))))

(declare-datatypes ((array!1348 0))(
  ( (array!1349 (arr!591 (Array (_ BitVec 32) (_ BitVec 32))) (size!591 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1348)

(assert (=> start!2943 (= res!12875 (= (size!591 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2943 e!9069))

(declare-fun array_inv!539 (array!1348) Bool)

(assert (=> start!2943 (array_inv!539 a!13)))

(assert (=> start!2943 tp!14))

(declare-fun b!16327 () Bool)

(declare-fun res!12876 () Bool)

(assert (=> b!16327 (=> (not res!12876) (not e!9069))))

(declare-fun P!6 () Int)

(declare-fun dynLambda!43 (Int (_ BitVec 32)) Bool)

(assert (=> b!16327 (= res!12876 (dynLambda!43 P!6 (select (arr!591 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!16328 () Bool)

(assert (=> b!16328 (= e!9069 (bvsge #b00000000000000000000000000000001 (size!591 a!13)))))

(assert (= (and start!2943 res!12875) b!16327))

(assert (= (and b!16327 res!12876) b!16328))

(declare-fun b_lambda!6601 () Bool)

(assert (=> (not b_lambda!6601) (not b!16327)))

(declare-fun t!211 () Bool)

(declare-fun tb!21 () Bool)

(assert (=> (and start!2943 (= P!6 P!6) t!211) tb!21))

(declare-fun result!21 () Bool)

(assert (=> tb!21 (= result!21 true)))

(assert (=> b!16327 t!211))

(declare-fun b_and!31 () Bool)

(assert (= b_and!29 (and (=> t!211 result!21) b_and!31)))

(declare-fun m!24531 () Bool)

(assert (=> start!2943 m!24531))

(declare-fun m!24533 () Bool)

(assert (=> b!16327 m!24533))

(assert (=> b!16327 m!24533))

(declare-fun m!24535 () Bool)

(assert (=> b!16327 m!24535))

(check-sat (not start!2943) (not b_lambda!6601) b_and!31 (not b_next!9))
(check-sat b_and!31 (not b_next!9))
