; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2913 () Bool)

(assert start!2913)

(declare-fun b_free!11 () Bool)

(declare-fun b_next!11 () Bool)

(assert (=> start!2913 (= b_free!11 (not b_next!11))))

(declare-fun tp!17 () Bool)

(declare-fun b_and!33 () Bool)

(assert (=> start!2913 (= tp!17 b_and!33)))

(declare-fun res!12457 () Bool)

(declare-fun e!8987 () Bool)

(assert (=> start!2913 (=> (not res!12457) (not e!8987))))

(declare-datatypes ((array!1347 0))(
  ( (array!1348 (arr!592 (Array (_ BitVec 32) (_ BitVec 32))) (size!592 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1347)

(assert (=> start!2913 (= res!12457 (= (size!592 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2913 e!8987))

(declare-fun array_inv!540 (array!1347) Bool)

(assert (=> start!2913 (array_inv!540 a!13)))

(assert (=> start!2913 tp!17))

(declare-fun b!15869 () Bool)

(declare-fun res!12458 () Bool)

(assert (=> b!15869 (=> (not res!12458) (not e!8987))))

(declare-fun P!6 () Int)

(declare-fun dynLambda!43 (Int (_ BitVec 32)) Bool)

(assert (=> b!15869 (= res!12458 (dynLambda!43 P!6 (select (arr!592 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!15870 () Bool)

(declare-fun res!12459 () Bool)

(assert (=> b!15870 (=> (not res!12459) (not e!8987))))

(assert (=> b!15870 (= res!12459 (dynLambda!43 P!6 (select (arr!592 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!15871 () Bool)

(assert (=> b!15871 (= e!8987 (bvsge #b00000000000000000000000000000010 (size!592 a!13)))))

(assert (= (and start!2913 res!12457) b!15869))

(assert (= (and b!15869 res!12458) b!15870))

(assert (= (and b!15870 res!12459) b!15871))

(declare-fun b_lambda!5323 () Bool)

(assert (=> (not b_lambda!5323) (not b!15869)))

(declare-fun t!213 () Bool)

(declare-fun tb!23 () Bool)

(assert (=> (and start!2913 (= P!6 P!6) t!213) tb!23))

(declare-fun result!23 () Bool)

(assert (=> tb!23 (= result!23 true)))

(assert (=> b!15869 t!213))

(declare-fun b_and!35 () Bool)

(assert (= b_and!33 (and (=> t!213 result!23) b_and!35)))

(declare-fun b_lambda!5325 () Bool)

(assert (=> (not b_lambda!5325) (not b!15870)))

(declare-fun t!215 () Bool)

(declare-fun tb!25 () Bool)

(assert (=> (and start!2913 (= P!6 P!6) t!215) tb!25))

(declare-fun result!25 () Bool)

(assert (=> tb!25 (= result!25 true)))

(assert (=> b!15870 t!215))

(declare-fun b_and!37 () Bool)

(assert (= b_and!35 (and (=> t!215 result!25) b_and!37)))

(declare-fun m!22203 () Bool)

(assert (=> start!2913 m!22203))

(declare-fun m!22205 () Bool)

(assert (=> b!15869 m!22205))

(assert (=> b!15869 m!22205))

(declare-fun m!22207 () Bool)

(assert (=> b!15869 m!22207))

(declare-fun m!22209 () Bool)

(assert (=> b!15870 m!22209))

(assert (=> b!15870 m!22209))

(declare-fun m!22211 () Bool)

(assert (=> b!15870 m!22211))

(check-sat b_and!37 (not b_lambda!5325) (not b_next!11) (not b_lambda!5323) (not start!2913))
(check-sat b_and!37 (not b_next!11))
