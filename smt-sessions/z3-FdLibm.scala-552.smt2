; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2923 () Bool)

(assert start!2923)

(declare-fun b_free!21 () Bool)

(declare-fun b_next!21 () Bool)

(assert (=> start!2923 (= b_free!21 (not b_next!21))))

(declare-fun tp!32 () Bool)

(declare-fun b_and!83 () Bool)

(assert (=> start!2923 (= tp!32 b_and!83)))

(declare-fun b!15954 () Bool)

(declare-fun e!9017 () Bool)

(declare-datatypes ((array!1357 0))(
  ( (array!1358 (arr!597 (Array (_ BitVec 32) (_ BitVec 32))) (size!597 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1357)

(assert (=> b!15954 (= e!9017 (bvsge #b00000000000000000000000000000111 (size!597 a!13)))))

(declare-fun b!15955 () Bool)

(declare-fun res!12544 () Bool)

(assert (=> b!15955 (=> (not res!12544) (not e!9017))))

(declare-fun P!6 () Int)

(declare-fun dynLambda!48 (Int (_ BitVec 32)) Bool)

(assert (=> b!15955 (= res!12544 (dynLambda!48 P!6 (select (arr!597 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!15956 () Bool)

(declare-fun res!12548 () Bool)

(assert (=> b!15956 (=> (not res!12548) (not e!9017))))

(assert (=> b!15956 (= res!12548 (dynLambda!48 P!6 (select (arr!597 a!13) #b00000000000000000000000000000101)))))

(declare-fun res!12545 () Bool)

(assert (=> start!2923 (=> (not res!12545) (not e!9017))))

(assert (=> start!2923 (= res!12545 (= (size!597 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2923 e!9017))

(declare-fun array_inv!545 (array!1357) Bool)

(assert (=> start!2923 (array_inv!545 a!13)))

(assert (=> start!2923 tp!32))

(declare-fun b!15957 () Bool)

(declare-fun res!12542 () Bool)

(assert (=> b!15957 (=> (not res!12542) (not e!9017))))

(assert (=> b!15957 (= res!12542 (dynLambda!48 P!6 (select (arr!597 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!15958 () Bool)

(declare-fun res!12549 () Bool)

(assert (=> b!15958 (=> (not res!12549) (not e!9017))))

(assert (=> b!15958 (= res!12549 (dynLambda!48 P!6 (select (arr!597 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!15959 () Bool)

(declare-fun res!12547 () Bool)

(assert (=> b!15959 (=> (not res!12547) (not e!9017))))

(assert (=> b!15959 (= res!12547 (dynLambda!48 P!6 (select (arr!597 a!13) #b00000000000000000000000000000110)))))

(declare-fun b!15960 () Bool)

(declare-fun res!12546 () Bool)

(assert (=> b!15960 (=> (not res!12546) (not e!9017))))

(assert (=> b!15960 (= res!12546 (dynLambda!48 P!6 (select (arr!597 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!15961 () Bool)

(declare-fun res!12543 () Bool)

(assert (=> b!15961 (=> (not res!12543) (not e!9017))))

(assert (=> b!15961 (= res!12543 (dynLambda!48 P!6 (select (arr!597 a!13) #b00000000000000000000000000000011)))))

(assert (= (and start!2923 res!12545) b!15955))

(assert (= (and b!15955 res!12544) b!15960))

(assert (= (and b!15960 res!12546) b!15957))

(assert (= (and b!15957 res!12542) b!15961))

(assert (= (and b!15961 res!12543) b!15958))

(assert (= (and b!15958 res!12549) b!15956))

(assert (= (and b!15956 res!12548) b!15959))

(assert (= (and b!15959 res!12547) b!15954))

(declare-fun b_lambda!5363 () Bool)

(assert (=> (not b_lambda!5363) (not b!15959)))

(declare-fun t!253 () Bool)

(declare-fun tb!63 () Bool)

(assert (=> (and start!2923 (= P!6 P!6) t!253) tb!63))

(declare-fun result!63 () Bool)

(assert (=> tb!63 (= result!63 true)))

(assert (=> b!15959 t!253))

(declare-fun b_and!85 () Bool)

(assert (= b_and!83 (and (=> t!253 result!63) b_and!85)))

(declare-fun b_lambda!5365 () Bool)

(assert (=> (not b_lambda!5365) (not b!15960)))

(declare-fun t!255 () Bool)

(declare-fun tb!65 () Bool)

(assert (=> (and start!2923 (= P!6 P!6) t!255) tb!65))

(declare-fun result!65 () Bool)

(assert (=> tb!65 (= result!65 true)))

(assert (=> b!15960 t!255))

(declare-fun b_and!87 () Bool)

(assert (= b_and!85 (and (=> t!255 result!65) b_and!87)))

(declare-fun b_lambda!5367 () Bool)

(assert (=> (not b_lambda!5367) (not b!15955)))

(declare-fun t!257 () Bool)

(declare-fun tb!67 () Bool)

(assert (=> (and start!2923 (= P!6 P!6) t!257) tb!67))

(declare-fun result!67 () Bool)

(assert (=> tb!67 (= result!67 true)))

(assert (=> b!15955 t!257))

(declare-fun b_and!89 () Bool)

(assert (= b_and!87 (and (=> t!257 result!67) b_and!89)))

(declare-fun b_lambda!5369 () Bool)

(assert (=> (not b_lambda!5369) (not b!15956)))

(declare-fun t!259 () Bool)

(declare-fun tb!69 () Bool)

(assert (=> (and start!2923 (= P!6 P!6) t!259) tb!69))

(declare-fun result!69 () Bool)

(assert (=> tb!69 (= result!69 true)))

(assert (=> b!15956 t!259))

(declare-fun b_and!91 () Bool)

(assert (= b_and!89 (and (=> t!259 result!69) b_and!91)))

(declare-fun b_lambda!5371 () Bool)

(assert (=> (not b_lambda!5371) (not b!15961)))

(declare-fun t!261 () Bool)

(declare-fun tb!71 () Bool)

(assert (=> (and start!2923 (= P!6 P!6) t!261) tb!71))

(declare-fun result!71 () Bool)

(assert (=> tb!71 (= result!71 true)))

(assert (=> b!15961 t!261))

(declare-fun b_and!93 () Bool)

(assert (= b_and!91 (and (=> t!261 result!71) b_and!93)))

(declare-fun b_lambda!5373 () Bool)

(assert (=> (not b_lambda!5373) (not b!15957)))

(declare-fun t!263 () Bool)

(declare-fun tb!73 () Bool)

(assert (=> (and start!2923 (= P!6 P!6) t!263) tb!73))

(declare-fun result!73 () Bool)

(assert (=> tb!73 (= result!73 true)))

(assert (=> b!15957 t!263))

(declare-fun b_and!95 () Bool)

(assert (= b_and!93 (and (=> t!263 result!73) b_and!95)))

(declare-fun b_lambda!5375 () Bool)

(assert (=> (not b_lambda!5375) (not b!15958)))

(declare-fun t!265 () Bool)

(declare-fun tb!75 () Bool)

(assert (=> (and start!2923 (= P!6 P!6) t!265) tb!75))

(declare-fun result!75 () Bool)

(assert (=> tb!75 (= result!75 true)))

(assert (=> b!15958 t!265))

(declare-fun b_and!97 () Bool)

(assert (= b_and!95 (and (=> t!265 result!75) b_and!97)))

(declare-fun m!22293 () Bool)

(assert (=> b!15955 m!22293))

(assert (=> b!15955 m!22293))

(declare-fun m!22295 () Bool)

(assert (=> b!15955 m!22295))

(declare-fun m!22297 () Bool)

(assert (=> b!15959 m!22297))

(assert (=> b!15959 m!22297))

(declare-fun m!22299 () Bool)

(assert (=> b!15959 m!22299))

(declare-fun m!22301 () Bool)

(assert (=> b!15956 m!22301))

(assert (=> b!15956 m!22301))

(declare-fun m!22303 () Bool)

(assert (=> b!15956 m!22303))

(declare-fun m!22305 () Bool)

(assert (=> start!2923 m!22305))

(declare-fun m!22307 () Bool)

(assert (=> b!15957 m!22307))

(assert (=> b!15957 m!22307))

(declare-fun m!22309 () Bool)

(assert (=> b!15957 m!22309))

(declare-fun m!22311 () Bool)

(assert (=> b!15958 m!22311))

(assert (=> b!15958 m!22311))

(declare-fun m!22313 () Bool)

(assert (=> b!15958 m!22313))

(declare-fun m!22315 () Bool)

(assert (=> b!15961 m!22315))

(assert (=> b!15961 m!22315))

(declare-fun m!22317 () Bool)

(assert (=> b!15961 m!22317))

(declare-fun m!22319 () Bool)

(assert (=> b!15960 m!22319))

(assert (=> b!15960 m!22319))

(declare-fun m!22321 () Bool)

(assert (=> b!15960 m!22321))

(check-sat (not b_lambda!5375) (not b_lambda!5365) (not b_lambda!5363) (not b_lambda!5371) (not b_next!21) (not b_lambda!5369) (not b_lambda!5367) b_and!97 (not start!2923) (not b_lambda!5373))
(check-sat b_and!97 (not b_next!21))
