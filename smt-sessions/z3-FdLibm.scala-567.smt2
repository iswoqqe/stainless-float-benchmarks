; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2985 () Bool)

(assert start!2985)

(declare-fun b_free!47 () Bool)

(declare-fun b_next!47 () Bool)

(assert (=> start!2985 (= b_free!47 (not b_next!47))))

(declare-fun tp!71 () Bool)

(declare-fun b_and!447 () Bool)

(assert (=> start!2985 (= tp!71 b_and!447)))

(declare-fun res!13502 () Bool)

(declare-fun e!9189 () Bool)

(assert (=> start!2985 (=> (not res!13502) (not e!9189))))

(declare-datatypes ((array!1390 0))(
  ( (array!1391 (arr!612 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!612 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1390)

(assert (=> start!2985 (= res!13502 (= (size!612 a!12) #b00000000000000000000000000010100))))

(assert (=> start!2985 e!9189))

(declare-fun array_inv!560 (array!1390) Bool)

(assert (=> start!2985 (array_inv!560 a!12)))

(assert (=> start!2985 tp!71))

(declare-fun b!16954 () Bool)

(declare-fun res!13503 () Bool)

(assert (=> b!16954 (=> (not res!13503) (not e!9189))))

(declare-fun P!5 () Int)

(declare-fun dynLambda!62 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!16954 (= res!13503 (dynLambda!62 P!5 (select (arr!612 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!16955 () Bool)

(assert (=> b!16955 (= e!9189 (bvsge #b00000000000000000000000000000001 (size!612 a!12)))))

(assert (= (and start!2985 res!13502) b!16954))

(assert (= (and b!16954 res!13503) b!16955))

(declare-fun b_lambda!6981 () Bool)

(assert (=> (not b_lambda!6981) (not b!16954)))

(declare-fun t!591 () Bool)

(declare-fun tb!401 () Bool)

(assert (=> (and start!2985 (= P!5 P!5) t!591) tb!401))

(declare-fun result!401 () Bool)

(assert (=> tb!401 (= result!401 true)))

(assert (=> b!16954 t!591))

(declare-fun b_and!449 () Bool)

(assert (= b_and!447 (and (=> t!591 result!401) b_and!449)))

(declare-fun m!25333 () Bool)

(assert (=> start!2985 m!25333))

(declare-fun m!25335 () Bool)

(assert (=> b!16954 m!25335))

(assert (=> b!16954 m!25335))

(declare-fun m!25337 () Bool)

(assert (=> b!16954 m!25337))

(check-sat (not start!2985) (not b_lambda!6981) b_and!449 (not b_next!47))
(check-sat b_and!449 (not b_next!47))
