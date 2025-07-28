; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2945 () Bool)

(assert start!2945)

(declare-fun b_free!11 () Bool)

(declare-fun b_next!11 () Bool)

(assert (=> start!2945 (= b_free!11 (not b_next!11))))

(declare-fun tp!17 () Bool)

(declare-fun b_and!33 () Bool)

(assert (=> start!2945 (= tp!17 b_and!33)))

(declare-fun res!12883 () Bool)

(declare-fun e!9075 () Bool)

(assert (=> start!2945 (=> (not res!12883) (not e!9075))))

(declare-datatypes ((array!1350 0))(
  ( (array!1351 (arr!592 (Array (_ BitVec 32) (_ BitVec 32))) (size!592 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1350)

(assert (=> start!2945 (= res!12883 (= (size!592 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2945 e!9075))

(declare-fun array_inv!540 (array!1350) Bool)

(assert (=> start!2945 (array_inv!540 a!13)))

(assert (=> start!2945 tp!17))

(declare-fun b!16335 () Bool)

(declare-fun res!12885 () Bool)

(assert (=> b!16335 (=> (not res!12885) (not e!9075))))

(declare-fun P!6 () Int)

(declare-fun dynLambda!44 (Int (_ BitVec 32)) Bool)

(assert (=> b!16335 (= res!12885 (dynLambda!44 P!6 (select (arr!592 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!16336 () Bool)

(declare-fun res!12884 () Bool)

(assert (=> b!16336 (=> (not res!12884) (not e!9075))))

(assert (=> b!16336 (= res!12884 (dynLambda!44 P!6 (select (arr!592 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!16337 () Bool)

(assert (=> b!16337 (= e!9075 (bvsge #b00000000000000000000000000000010 (size!592 a!13)))))

(assert (= (and start!2945 res!12883) b!16335))

(assert (= (and b!16335 res!12885) b!16336))

(assert (= (and b!16336 res!12884) b!16337))

(declare-fun b_lambda!6603 () Bool)

(assert (=> (not b_lambda!6603) (not b!16335)))

(declare-fun t!213 () Bool)

(declare-fun tb!23 () Bool)

(assert (=> (and start!2945 (= P!6 P!6) t!213) tb!23))

(declare-fun result!23 () Bool)

(assert (=> tb!23 (= result!23 true)))

(assert (=> b!16335 t!213))

(declare-fun b_and!35 () Bool)

(assert (= b_and!33 (and (=> t!213 result!23) b_and!35)))

(declare-fun b_lambda!6605 () Bool)

(assert (=> (not b_lambda!6605) (not b!16336)))

(declare-fun t!215 () Bool)

(declare-fun tb!25 () Bool)

(assert (=> (and start!2945 (= P!6 P!6) t!215) tb!25))

(declare-fun result!25 () Bool)

(assert (=> tb!25 (= result!25 true)))

(assert (=> b!16336 t!215))

(declare-fun b_and!37 () Bool)

(assert (= b_and!35 (and (=> t!215 result!25) b_and!37)))

(declare-fun m!24537 () Bool)

(assert (=> start!2945 m!24537))

(declare-fun m!24539 () Bool)

(assert (=> b!16335 m!24539))

(assert (=> b!16335 m!24539))

(declare-fun m!24541 () Bool)

(assert (=> b!16335 m!24541))

(declare-fun m!24543 () Bool)

(assert (=> b!16336 m!24543))

(assert (=> b!16336 m!24543))

(declare-fun m!24545 () Bool)

(assert (=> b!16336 m!24545))

(check-sat (not start!2945) (not b_lambda!6603) b_and!37 (not b_lambda!6605) (not b_next!11))
(check-sat b_and!37 (not b_next!11))
