; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2021 () Bool)

(assert start!2021)

(declare-fun b_free!7 () Bool)

(declare-fun b_next!7 () Bool)

(assert (=> start!2021 (= b_free!7 (not b_next!7))))

(declare-fun tp!11 () Bool)

(declare-fun b_and!19 () Bool)

(assert (=> start!2021 (= tp!11 b_and!19)))

(declare-fun b!10148 () Bool)

(declare-fun res!8140 () Bool)

(declare-fun e!5875 () Bool)

(assert (=> b!10148 (=> (not res!8140) (not e!5875))))

(declare-fun P!4 () Int)

(declare-datatypes ((array!751 0))(
  ( (array!752 (arr!332 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!332 (_ BitVec 32))) )
))
(declare-fun a!11 () array!751)

(declare-fun dynLambda!27 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!10148 (= res!8140 (dynLambda!27 P!4 (select (arr!332 a!11) #b00000000000000000000000000000000)))))

(declare-fun b!10149 () Bool)

(declare-fun res!8136 () Bool)

(assert (=> b!10149 (=> (not res!8136) (not e!5875))))

(assert (=> b!10149 (= res!8136 (dynLambda!27 P!4 (select (arr!332 a!11) #b00000000000000000000000000000011)))))

(declare-fun b!10150 () Bool)

(declare-fun res!8138 () Bool)

(assert (=> b!10150 (=> (not res!8138) (not e!5875))))

(assert (=> b!10150 (= res!8138 (dynLambda!27 P!4 (select (arr!332 a!11) #b00000000000000000000000000000001)))))

(declare-fun b!10151 () Bool)

(assert (=> b!10151 (= e!5875 (bvsge #b00000000000000000000000000000100 (size!332 a!11)))))

(declare-fun res!8139 () Bool)

(assert (=> start!2021 (=> (not res!8139) (not e!5875))))

(assert (=> start!2021 (= res!8139 (= (size!332 a!11) #b00000000000000000000000000000101))))

(assert (=> start!2021 e!5875))

(declare-fun array_inv!281 (array!751) Bool)

(assert (=> start!2021 (array_inv!281 a!11)))

(assert (=> start!2021 tp!11))

(declare-fun b!10147 () Bool)

(declare-fun res!8137 () Bool)

(assert (=> b!10147 (=> (not res!8137) (not e!5875))))

(assert (=> b!10147 (= res!8137 (dynLambda!27 P!4 (select (arr!332 a!11) #b00000000000000000000000000000010)))))

(assert (= (and start!2021 res!8139) b!10148))

(assert (= (and b!10148 res!8140) b!10150))

(assert (= (and b!10150 res!8138) b!10147))

(assert (= (and b!10147 res!8137) b!10149))

(assert (= (and b!10149 res!8136) b!10151))

(declare-fun b_lambda!3713 () Bool)

(assert (=> (not b_lambda!3713) (not b!10148)))

(declare-fun t!203 () Bool)

(declare-fun tb!13 () Bool)

(assert (=> (and start!2021 (= P!4 P!4) t!203) tb!13))

(declare-fun result!13 () Bool)

(assert (=> tb!13 (= result!13 true)))

(assert (=> b!10148 t!203))

(declare-fun b_and!21 () Bool)

(assert (= b_and!19 (and (=> t!203 result!13) b_and!21)))

(declare-fun b_lambda!3715 () Bool)

(assert (=> (not b_lambda!3715) (not b!10149)))

(declare-fun t!205 () Bool)

(declare-fun tb!15 () Bool)

(assert (=> (and start!2021 (= P!4 P!4) t!205) tb!15))

(declare-fun result!15 () Bool)

(assert (=> tb!15 (= result!15 true)))

(assert (=> b!10149 t!205))

(declare-fun b_and!23 () Bool)

(assert (= b_and!21 (and (=> t!205 result!15) b_and!23)))

(declare-fun b_lambda!3717 () Bool)

(assert (=> (not b_lambda!3717) (not b!10150)))

(declare-fun t!207 () Bool)

(declare-fun tb!17 () Bool)

(assert (=> (and start!2021 (= P!4 P!4) t!207) tb!17))

(declare-fun result!17 () Bool)

(assert (=> tb!17 (= result!17 true)))

(assert (=> b!10150 t!207))

(declare-fun b_and!25 () Bool)

(assert (= b_and!23 (and (=> t!207 result!17) b_and!25)))

(declare-fun b_lambda!3719 () Bool)

(assert (=> (not b_lambda!3719) (not b!10147)))

(declare-fun t!209 () Bool)

(declare-fun tb!19 () Bool)

(assert (=> (and start!2021 (= P!4 P!4) t!209) tb!19))

(declare-fun result!19 () Bool)

(assert (=> tb!19 (= result!19 true)))

(assert (=> b!10147 t!209))

(declare-fun b_and!27 () Bool)

(assert (= b_and!25 (and (=> t!209 result!19) b_and!27)))

(declare-fun m!14459 () Bool)

(assert (=> start!2021 m!14459))

(declare-fun m!14461 () Bool)

(assert (=> b!10147 m!14461))

(assert (=> b!10147 m!14461))

(declare-fun m!14463 () Bool)

(assert (=> b!10147 m!14463))

(declare-fun m!14465 () Bool)

(assert (=> b!10150 m!14465))

(assert (=> b!10150 m!14465))

(declare-fun m!14467 () Bool)

(assert (=> b!10150 m!14467))

(declare-fun m!14469 () Bool)

(assert (=> b!10148 m!14469))

(assert (=> b!10148 m!14469))

(declare-fun m!14471 () Bool)

(assert (=> b!10148 m!14471))

(declare-fun m!14473 () Bool)

(assert (=> b!10149 m!14473))

(assert (=> b!10149 m!14473))

(declare-fun m!14475 () Bool)

(assert (=> b!10149 m!14475))

(check-sat (not b_lambda!3717) b_and!27 (not b_next!7) (not b_lambda!3719) (not start!2021) (not b_lambda!3713) (not b_lambda!3715))
(check-sat b_and!27 (not b_next!7))
