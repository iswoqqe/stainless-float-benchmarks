; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2045 () Bool)

(assert start!2045)

(declare-fun b_free!5 () Bool)

(declare-fun b_next!5 () Bool)

(assert (=> start!2045 (= b_free!5 (not b_next!5))))

(declare-fun tp!8 () Bool)

(declare-fun b_and!11 () Bool)

(assert (=> start!2045 (= tp!8 b_and!11)))

(declare-fun b!10504 () Bool)

(declare-fun e!5939 () Bool)

(declare-datatypes ((array!752 0))(
  ( (array!753 (arr!331 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!331 (_ BitVec 32))) )
))
(declare-fun a!11 () array!752)

(assert (=> b!10504 (= e!5939 (bvsge #b00000000000000000000000000000011 (size!331 a!11)))))

(declare-fun res!8460 () Bool)

(assert (=> start!2045 (=> (not res!8460) (not e!5939))))

(assert (=> start!2045 (= res!8460 (= (size!331 a!11) #b00000000000000000000000000000101))))

(assert (=> start!2045 e!5939))

(declare-fun array_inv!280 (array!752) Bool)

(assert (=> start!2045 (array_inv!280 a!11)))

(assert (=> start!2045 tp!8))

(declare-fun b!10503 () Bool)

(declare-fun res!8463 () Bool)

(assert (=> b!10503 (=> (not res!8463) (not e!5939))))

(declare-fun P!4 () Int)

(declare-fun dynLambda!27 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!10503 (= res!8463 (dynLambda!27 P!4 (select (arr!331 a!11) #b00000000000000000000000000000010)))))

(declare-fun b!10502 () Bool)

(declare-fun res!8461 () Bool)

(assert (=> b!10502 (=> (not res!8461) (not e!5939))))

(assert (=> b!10502 (= res!8461 (dynLambda!27 P!4 (select (arr!331 a!11) #b00000000000000000000000000000001)))))

(declare-fun b!10501 () Bool)

(declare-fun res!8462 () Bool)

(assert (=> b!10501 (=> (not res!8462) (not e!5939))))

(assert (=> b!10501 (= res!8462 (dynLambda!27 P!4 (select (arr!331 a!11) #b00000000000000000000000000000000)))))

(assert (= (and start!2045 res!8460) b!10501))

(assert (= (and b!10501 res!8462) b!10502))

(assert (= (and b!10502 res!8461) b!10503))

(assert (= (and b!10503 res!8463) b!10504))

(declare-fun b_lambda!4667 () Bool)

(assert (=> (not b_lambda!4667) (not b!10503)))

(declare-fun t!197 () Bool)

(declare-fun tb!7 () Bool)

(assert (=> (and start!2045 (= P!4 P!4) t!197) tb!7))

(declare-fun result!7 () Bool)

(assert (=> tb!7 (= result!7 true)))

(assert (=> b!10503 t!197))

(declare-fun b_and!13 () Bool)

(assert (= b_and!11 (and (=> t!197 result!7) b_and!13)))

(declare-fun b_lambda!4669 () Bool)

(assert (=> (not b_lambda!4669) (not b!10502)))

(declare-fun t!199 () Bool)

(declare-fun tb!9 () Bool)

(assert (=> (and start!2045 (= P!4 P!4) t!199) tb!9))

(declare-fun result!9 () Bool)

(assert (=> tb!9 (= result!9 true)))

(assert (=> b!10502 t!199))

(declare-fun b_and!15 () Bool)

(assert (= b_and!13 (and (=> t!199 result!9) b_and!15)))

(declare-fun b_lambda!4671 () Bool)

(assert (=> (not b_lambda!4671) (not b!10501)))

(declare-fun t!201 () Bool)

(declare-fun tb!11 () Bool)

(assert (=> (and start!2045 (= P!4 P!4) t!201) tb!11))

(declare-fun result!11 () Bool)

(assert (=> tb!11 (= result!11 true)))

(assert (=> b!10501 t!201))

(declare-fun b_and!17 () Bool)

(assert (= b_and!15 (and (=> t!201 result!11) b_and!17)))

(declare-fun m!16269 () Bool)

(assert (=> start!2045 m!16269))

(declare-fun m!16271 () Bool)

(assert (=> b!10503 m!16271))

(assert (=> b!10503 m!16271))

(declare-fun m!16273 () Bool)

(assert (=> b!10503 m!16273))

(declare-fun m!16275 () Bool)

(assert (=> b!10502 m!16275))

(assert (=> b!10502 m!16275))

(declare-fun m!16277 () Bool)

(assert (=> b!10502 m!16277))

(declare-fun m!16279 () Bool)

(assert (=> b!10501 m!16279))

(assert (=> b!10501 m!16279))

(declare-fun m!16281 () Bool)

(assert (=> b!10501 m!16281))

(check-sat (not b_lambda!4667) b_and!17 (not b_lambda!4671) (not b_lambda!4669) (not start!2045) (not b_next!5))
(check-sat b_and!17 (not b_next!5))
