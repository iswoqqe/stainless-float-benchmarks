; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2047 () Bool)

(assert start!2047)

(declare-fun b_free!7 () Bool)

(declare-fun b_next!7 () Bool)

(assert (=> start!2047 (= b_free!7 (not b_next!7))))

(declare-fun tp!11 () Bool)

(declare-fun b_and!19 () Bool)

(assert (=> start!2047 (= tp!11 b_and!19)))

(declare-fun b!10515 () Bool)

(declare-fun res!8474 () Bool)

(declare-fun e!5945 () Bool)

(assert (=> b!10515 (=> (not res!8474) (not e!5945))))

(declare-fun P!4 () Int)

(declare-datatypes ((array!754 0))(
  ( (array!755 (arr!332 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!332 (_ BitVec 32))) )
))
(declare-fun a!11 () array!754)

(declare-fun dynLambda!28 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!10515 (= res!8474 (dynLambda!28 P!4 (select (arr!332 a!11) #b00000000000000000000000000000011)))))

(declare-fun b!10516 () Bool)

(declare-fun res!8478 () Bool)

(assert (=> b!10516 (=> (not res!8478) (not e!5945))))

(assert (=> b!10516 (= res!8478 (dynLambda!28 P!4 (select (arr!332 a!11) #b00000000000000000000000000000010)))))

(declare-fun res!8476 () Bool)

(assert (=> start!2047 (=> (not res!8476) (not e!5945))))

(assert (=> start!2047 (= res!8476 (= (size!332 a!11) #b00000000000000000000000000000101))))

(assert (=> start!2047 e!5945))

(declare-fun array_inv!281 (array!754) Bool)

(assert (=> start!2047 (array_inv!281 a!11)))

(assert (=> start!2047 tp!11))

(declare-fun b!10517 () Bool)

(declare-fun res!8475 () Bool)

(assert (=> b!10517 (=> (not res!8475) (not e!5945))))

(assert (=> b!10517 (= res!8475 (dynLambda!28 P!4 (select (arr!332 a!11) #b00000000000000000000000000000001)))))

(declare-fun b!10518 () Bool)

(declare-fun res!8477 () Bool)

(assert (=> b!10518 (=> (not res!8477) (not e!5945))))

(assert (=> b!10518 (= res!8477 (dynLambda!28 P!4 (select (arr!332 a!11) #b00000000000000000000000000000000)))))

(declare-fun b!10519 () Bool)

(assert (=> b!10519 (= e!5945 (bvsge #b00000000000000000000000000000100 (size!332 a!11)))))

(assert (= (and start!2047 res!8476) b!10518))

(assert (= (and b!10518 res!8477) b!10517))

(assert (= (and b!10517 res!8475) b!10516))

(assert (= (and b!10516 res!8478) b!10515))

(assert (= (and b!10515 res!8474) b!10519))

(declare-fun b_lambda!4673 () Bool)

(assert (=> (not b_lambda!4673) (not b!10515)))

(declare-fun t!203 () Bool)

(declare-fun tb!13 () Bool)

(assert (=> (and start!2047 (= P!4 P!4) t!203) tb!13))

(declare-fun result!13 () Bool)

(assert (=> tb!13 (= result!13 true)))

(assert (=> b!10515 t!203))

(declare-fun b_and!21 () Bool)

(assert (= b_and!19 (and (=> t!203 result!13) b_and!21)))

(declare-fun b_lambda!4675 () Bool)

(assert (=> (not b_lambda!4675) (not b!10516)))

(declare-fun t!205 () Bool)

(declare-fun tb!15 () Bool)

(assert (=> (and start!2047 (= P!4 P!4) t!205) tb!15))

(declare-fun result!15 () Bool)

(assert (=> tb!15 (= result!15 true)))

(assert (=> b!10516 t!205))

(declare-fun b_and!23 () Bool)

(assert (= b_and!21 (and (=> t!205 result!15) b_and!23)))

(declare-fun b_lambda!4677 () Bool)

(assert (=> (not b_lambda!4677) (not b!10517)))

(declare-fun t!207 () Bool)

(declare-fun tb!17 () Bool)

(assert (=> (and start!2047 (= P!4 P!4) t!207) tb!17))

(declare-fun result!17 () Bool)

(assert (=> tb!17 (= result!17 true)))

(assert (=> b!10517 t!207))

(declare-fun b_and!25 () Bool)

(assert (= b_and!23 (and (=> t!207 result!17) b_and!25)))

(declare-fun b_lambda!4679 () Bool)

(assert (=> (not b_lambda!4679) (not b!10518)))

(declare-fun t!209 () Bool)

(declare-fun tb!19 () Bool)

(assert (=> (and start!2047 (= P!4 P!4) t!209) tb!19))

(declare-fun result!19 () Bool)

(assert (=> tb!19 (= result!19 true)))

(assert (=> b!10518 t!209))

(declare-fun b_and!27 () Bool)

(assert (= b_and!25 (and (=> t!209 result!19) b_and!27)))

(declare-fun m!16283 () Bool)

(assert (=> b!10515 m!16283))

(assert (=> b!10515 m!16283))

(declare-fun m!16285 () Bool)

(assert (=> b!10515 m!16285))

(declare-fun m!16287 () Bool)

(assert (=> b!10516 m!16287))

(assert (=> b!10516 m!16287))

(declare-fun m!16289 () Bool)

(assert (=> b!10516 m!16289))

(declare-fun m!16291 () Bool)

(assert (=> b!10517 m!16291))

(assert (=> b!10517 m!16291))

(declare-fun m!16293 () Bool)

(assert (=> b!10517 m!16293))

(declare-fun m!16295 () Bool)

(assert (=> start!2047 m!16295))

(declare-fun m!16297 () Bool)

(assert (=> b!10518 m!16297))

(assert (=> b!10518 m!16297))

(declare-fun m!16299 () Bool)

(assert (=> b!10518 m!16299))

(check-sat b_and!27 (not start!2047) (not b_lambda!4679) (not b_next!7) (not b_lambda!4677) (not b_lambda!4673) (not b_lambda!4675))
(check-sat b_and!27 (not b_next!7))
