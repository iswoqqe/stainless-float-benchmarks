; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2955 () Bool)

(assert start!2955)

(declare-fun b_free!49 () Bool)

(declare-fun b_next!49 () Bool)

(assert (=> start!2955 (= b_free!49 (not b_next!49))))

(declare-fun tp!74 () Bool)

(declare-fun b_and!451 () Bool)

(assert (=> start!2955 (= tp!74 b_and!451)))

(declare-fun res!13084 () Bool)

(declare-fun e!9107 () Bool)

(assert (=> start!2955 (=> (not res!13084) (not e!9107))))

(declare-datatypes ((array!1389 0))(
  ( (array!1390 (arr!613 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!613 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1389)

(assert (=> start!2955 (= res!13084 (= (size!613 a!12) #b00000000000000000000000000010100))))

(assert (=> start!2955 e!9107))

(declare-fun array_inv!561 (array!1389) Bool)

(assert (=> start!2955 (array_inv!561 a!12)))

(assert (=> start!2955 tp!74))

(declare-fun b!16496 () Bool)

(declare-fun res!13085 () Bool)

(assert (=> b!16496 (=> (not res!13085) (not e!9107))))

(declare-fun P!5 () Int)

(declare-fun dynLambda!62 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!16496 (= res!13085 (dynLambda!62 P!5 (select (arr!613 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!16497 () Bool)

(declare-fun res!13086 () Bool)

(assert (=> b!16497 (=> (not res!13086) (not e!9107))))

(assert (=> b!16497 (= res!13086 (dynLambda!62 P!5 (select (arr!613 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!16498 () Bool)

(assert (=> b!16498 (= e!9107 (bvsge #b00000000000000000000000000000010 (size!613 a!12)))))

(assert (= (and start!2955 res!13084) b!16496))

(assert (= (and b!16496 res!13085) b!16497))

(assert (= (and b!16497 res!13086) b!16498))

(declare-fun b_lambda!5703 () Bool)

(assert (=> (not b_lambda!5703) (not b!16496)))

(declare-fun t!593 () Bool)

(declare-fun tb!403 () Bool)

(assert (=> (and start!2955 (= P!5 P!5) t!593) tb!403))

(declare-fun result!403 () Bool)

(assert (=> tb!403 (= result!403 true)))

(assert (=> b!16496 t!593))

(declare-fun b_and!453 () Bool)

(assert (= b_and!451 (and (=> t!593 result!403) b_and!453)))

(declare-fun b_lambda!5705 () Bool)

(assert (=> (not b_lambda!5705) (not b!16497)))

(declare-fun t!595 () Bool)

(declare-fun tb!405 () Bool)

(assert (=> (and start!2955 (= P!5 P!5) t!595) tb!405))

(declare-fun result!405 () Bool)

(assert (=> tb!405 (= result!405 true)))

(assert (=> b!16497 t!595))

(declare-fun b_and!455 () Bool)

(assert (= b_and!453 (and (=> t!595 result!405) b_and!455)))

(declare-fun m!23005 () Bool)

(assert (=> start!2955 m!23005))

(declare-fun m!23007 () Bool)

(assert (=> b!16496 m!23007))

(assert (=> b!16496 m!23007))

(declare-fun m!23009 () Bool)

(assert (=> b!16496 m!23009))

(declare-fun m!23011 () Bool)

(assert (=> b!16497 m!23011))

(assert (=> b!16497 m!23011))

(declare-fun m!23013 () Bool)

(assert (=> b!16497 m!23013))

(check-sat (not b_lambda!5703) (not start!2955) (not b_lambda!5705) b_and!455 (not b_next!49))
(check-sat b_and!455 (not b_next!49))
