; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2987 () Bool)

(assert start!2987)

(declare-fun b_free!49 () Bool)

(declare-fun b_next!49 () Bool)

(assert (=> start!2987 (= b_free!49 (not b_next!49))))

(declare-fun tp!74 () Bool)

(declare-fun b_and!451 () Bool)

(assert (=> start!2987 (= tp!74 b_and!451)))

(declare-fun res!13510 () Bool)

(declare-fun e!9194 () Bool)

(assert (=> start!2987 (=> (not res!13510) (not e!9194))))

(declare-datatypes ((array!1392 0))(
  ( (array!1393 (arr!613 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!613 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1392)

(assert (=> start!2987 (= res!13510 (= (size!613 a!12) #b00000000000000000000000000010100))))

(assert (=> start!2987 e!9194))

(declare-fun array_inv!561 (array!1392) Bool)

(assert (=> start!2987 (array_inv!561 a!12)))

(assert (=> start!2987 tp!74))

(declare-fun b!16962 () Bool)

(declare-fun res!13511 () Bool)

(assert (=> b!16962 (=> (not res!13511) (not e!9194))))

(declare-fun P!5 () Int)

(declare-fun dynLambda!63 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!16962 (= res!13511 (dynLambda!63 P!5 (select (arr!613 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!16963 () Bool)

(declare-fun res!13512 () Bool)

(assert (=> b!16963 (=> (not res!13512) (not e!9194))))

(assert (=> b!16963 (= res!13512 (dynLambda!63 P!5 (select (arr!613 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!16964 () Bool)

(assert (=> b!16964 (= e!9194 (bvsge #b00000000000000000000000000000010 (size!613 a!12)))))

(assert (= (and start!2987 res!13510) b!16962))

(assert (= (and b!16962 res!13511) b!16963))

(assert (= (and b!16963 res!13512) b!16964))

(declare-fun b_lambda!6983 () Bool)

(assert (=> (not b_lambda!6983) (not b!16962)))

(declare-fun t!593 () Bool)

(declare-fun tb!403 () Bool)

(assert (=> (and start!2987 (= P!5 P!5) t!593) tb!403))

(declare-fun result!403 () Bool)

(assert (=> tb!403 (= result!403 true)))

(assert (=> b!16962 t!593))

(declare-fun b_and!453 () Bool)

(assert (= b_and!451 (and (=> t!593 result!403) b_and!453)))

(declare-fun b_lambda!6985 () Bool)

(assert (=> (not b_lambda!6985) (not b!16963)))

(declare-fun t!595 () Bool)

(declare-fun tb!405 () Bool)

(assert (=> (and start!2987 (= P!5 P!5) t!595) tb!405))

(declare-fun result!405 () Bool)

(assert (=> tb!405 (= result!405 true)))

(assert (=> b!16963 t!595))

(declare-fun b_and!455 () Bool)

(assert (= b_and!453 (and (=> t!595 result!405) b_and!455)))

(declare-fun m!25339 () Bool)

(assert (=> start!2987 m!25339))

(declare-fun m!25341 () Bool)

(assert (=> b!16962 m!25341))

(assert (=> b!16962 m!25341))

(declare-fun m!25343 () Bool)

(assert (=> b!16962 m!25343))

(declare-fun m!25345 () Bool)

(assert (=> b!16963 m!25345))

(assert (=> b!16963 m!25345))

(declare-fun m!25347 () Bool)

(assert (=> b!16963 m!25347))

(check-sat (not b_next!49) (not b_lambda!6983) (not b_lambda!6985) (not start!2987) b_and!455)
(check-sat b_and!455 (not b_next!49))
