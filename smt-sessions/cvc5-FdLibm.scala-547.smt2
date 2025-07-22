; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3099 () Bool)

(assert start!3099)

(declare-fun b_free!11 () Bool)

(declare-fun b_next!11 () Bool)

(assert (=> start!3099 (= b_free!11 (not b_next!11))))

(declare-fun tp!17 () Bool)

(declare-fun b_and!33 () Bool)

(assert (=> start!3099 (= tp!17 b_and!33)))

(declare-fun res!13634 () Bool)

(declare-fun e!9328 () Bool)

(assert (=> start!3099 (=> (not res!13634) (not e!9328))))

(declare-datatypes ((array!1360 0))(
  ( (array!1361 (arr!592 (Array (_ BitVec 32) (_ BitVec 32))) (size!592 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1360)

(assert (=> start!3099 (= res!13634 (= (size!592 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3099 e!9328))

(declare-fun array_inv!540 (array!1360) Bool)

(assert (=> start!3099 (array_inv!540 a!13)))

(assert (=> start!3099 tp!17))

(declare-fun b!17205 () Bool)

(declare-fun res!13635 () Bool)

(assert (=> b!17205 (=> (not res!13635) (not e!9328))))

(declare-fun P!6 () Int)

(declare-fun dynLambda!48 (Int (_ BitVec 32)) Bool)

(assert (=> b!17205 (= res!13635 (dynLambda!48 P!6 (select (arr!592 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!17206 () Bool)

(declare-fun res!13633 () Bool)

(assert (=> b!17206 (=> (not res!13633) (not e!9328))))

(assert (=> b!17206 (= res!13633 (dynLambda!48 P!6 (select (arr!592 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17207 () Bool)

(assert (=> b!17207 (= e!9328 (bvsge #b00000000000000000000000000000010 (size!592 a!13)))))

(assert (= (and start!3099 res!13634) b!17205))

(assert (= (and b!17205 res!13635) b!17206))

(assert (= (and b!17206 res!13633) b!17207))

(declare-fun b_lambda!7963 () Bool)

(assert (=> (not b_lambda!7963) (not b!17205)))

(declare-fun t!213 () Bool)

(declare-fun tb!23 () Bool)

(assert (=> (and start!3099 (= P!6 P!6) t!213) tb!23))

(declare-fun result!23 () Bool)

(assert (=> tb!23 (= result!23 true)))

(assert (=> b!17205 t!213))

(declare-fun b_and!35 () Bool)

(assert (= b_and!33 (and (=> t!213 result!23) b_and!35)))

(declare-fun b_lambda!7965 () Bool)

(assert (=> (not b_lambda!7965) (not b!17206)))

(declare-fun t!215 () Bool)

(declare-fun tb!25 () Bool)

(assert (=> (and start!3099 (= P!6 P!6) t!215) tb!25))

(declare-fun result!25 () Bool)

(assert (=> tb!25 (= result!25 true)))

(assert (=> b!17206 t!215))

(declare-fun b_and!37 () Bool)

(assert (= b_and!35 (and (=> t!215 result!25) b_and!37)))

(declare-fun m!27381 () Bool)

(assert (=> start!3099 m!27381))

(declare-fun m!27383 () Bool)

(assert (=> b!17205 m!27383))

(assert (=> b!17205 m!27383))

(declare-fun m!27385 () Bool)

(assert (=> b!17205 m!27385))

(declare-fun m!27387 () Bool)

(assert (=> b!17206 m!27387))

(assert (=> b!17206 m!27387))

(declare-fun m!27389 () Bool)

(assert (=> b!17206 m!27389))

(push 1)

(assert (not b_lambda!7965))

(assert (not b_next!11))

(assert (not b_lambda!7963))

(assert b_and!37)

(assert (not start!3099))

(check-sat)

(pop 1)

(push 1)

(assert b_and!37)

(assert (not b_next!11))

(check-sat)

(pop 1)

