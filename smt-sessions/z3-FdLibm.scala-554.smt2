; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2927 () Bool)

(assert start!2927)

(declare-fun b_free!25 () Bool)

(declare-fun b_next!25 () Bool)

(assert (=> start!2927 (= b_free!25 (not b_next!25))))

(declare-fun tp!38 () Bool)

(declare-fun b_and!117 () Bool)

(assert (=> start!2927 (= tp!38 b_and!117)))

(declare-fun b!16009 () Bool)

(declare-fun res!12603 () Bool)

(declare-fun e!9029 () Bool)

(assert (=> b!16009 (=> (not res!12603) (not e!9029))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1361 0))(
  ( (array!1362 (arr!599 (Array (_ BitVec 32) (_ BitVec 32))) (size!599 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1361)

(declare-fun dynLambda!50 (Int (_ BitVec 32)) Bool)

(assert (=> b!16009 (= res!12603 (dynLambda!50 P!6 (select (arr!599 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!16010 () Bool)

(declare-fun res!12601 () Bool)

(assert (=> b!16010 (=> (not res!12601) (not e!9029))))

(assert (=> b!16010 (= res!12601 (dynLambda!50 P!6 (select (arr!599 a!13) #b00000000000000000000000000000100)))))

(declare-fun res!12604 () Bool)

(assert (=> start!2927 (=> (not res!12604) (not e!9029))))

(assert (=> start!2927 (= res!12604 (= (size!599 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2927 e!9029))

(declare-fun array_inv!547 (array!1361) Bool)

(assert (=> start!2927 (array_inv!547 a!13)))

(assert (=> start!2927 tp!38))

(declare-fun b!16011 () Bool)

(declare-fun res!12600 () Bool)

(assert (=> b!16011 (=> (not res!12600) (not e!9029))))

(assert (=> b!16011 (= res!12600 (dynLambda!50 P!6 (select (arr!599 a!13) #b00000000000000000000000000001000)))))

(declare-fun b!16012 () Bool)

(declare-fun res!12606 () Bool)

(assert (=> b!16012 (=> (not res!12606) (not e!9029))))

(assert (=> b!16012 (= res!12606 (dynLambda!50 P!6 (select (arr!599 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!16013 () Bool)

(declare-fun res!12598 () Bool)

(assert (=> b!16013 (=> (not res!12598) (not e!9029))))

(assert (=> b!16013 (= res!12598 (dynLambda!50 P!6 (select (arr!599 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!16014 () Bool)

(declare-fun res!12599 () Bool)

(assert (=> b!16014 (=> (not res!12599) (not e!9029))))

(assert (=> b!16014 (= res!12599 (dynLambda!50 P!6 (select (arr!599 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!16015 () Bool)

(declare-fun res!12597 () Bool)

(assert (=> b!16015 (=> (not res!12597) (not e!9029))))

(assert (=> b!16015 (= res!12597 (dynLambda!50 P!6 (select (arr!599 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!16016 () Bool)

(declare-fun res!12605 () Bool)

(assert (=> b!16016 (=> (not res!12605) (not e!9029))))

(assert (=> b!16016 (= res!12605 (dynLambda!50 P!6 (select (arr!599 a!13) #b00000000000000000000000000000111)))))

(declare-fun b!16017 () Bool)

(assert (=> b!16017 (= e!9029 (bvsge #b00000000000000000000000000001001 (size!599 a!13)))))

(declare-fun b!16018 () Bool)

(declare-fun res!12602 () Bool)

(assert (=> b!16018 (=> (not res!12602) (not e!9029))))

(assert (=> b!16018 (= res!12602 (dynLambda!50 P!6 (select (arr!599 a!13) #b00000000000000000000000000000110)))))

(assert (= (and start!2927 res!12604) b!16015))

(assert (= (and b!16015 res!12597) b!16014))

(assert (= (and b!16014 res!12599) b!16012))

(assert (= (and b!16012 res!12606) b!16009))

(assert (= (and b!16009 res!12603) b!16010))

(assert (= (and b!16010 res!12601) b!16013))

(assert (= (and b!16013 res!12598) b!16018))

(assert (= (and b!16018 res!12602) b!16016))

(assert (= (and b!16016 res!12605) b!16011))

(assert (= (and b!16011 res!12600) b!16017))

(declare-fun b_lambda!5393 () Bool)

(assert (=> (not b_lambda!5393) (not b!16015)))

(declare-fun t!283 () Bool)

(declare-fun tb!93 () Bool)

(assert (=> (and start!2927 (= P!6 P!6) t!283) tb!93))

(declare-fun result!93 () Bool)

(assert (=> tb!93 (= result!93 true)))

(assert (=> b!16015 t!283))

(declare-fun b_and!119 () Bool)

(assert (= b_and!117 (and (=> t!283 result!93) b_and!119)))

(declare-fun b_lambda!5395 () Bool)

(assert (=> (not b_lambda!5395) (not b!16014)))

(declare-fun t!285 () Bool)

(declare-fun tb!95 () Bool)

(assert (=> (and start!2927 (= P!6 P!6) t!285) tb!95))

(declare-fun result!95 () Bool)

(assert (=> tb!95 (= result!95 true)))

(assert (=> b!16014 t!285))

(declare-fun b_and!121 () Bool)

(assert (= b_and!119 (and (=> t!285 result!95) b_and!121)))

(declare-fun b_lambda!5397 () Bool)

(assert (=> (not b_lambda!5397) (not b!16013)))

(declare-fun t!287 () Bool)

(declare-fun tb!97 () Bool)

(assert (=> (and start!2927 (= P!6 P!6) t!287) tb!97))

(declare-fun result!97 () Bool)

(assert (=> tb!97 (= result!97 true)))

(assert (=> b!16013 t!287))

(declare-fun b_and!123 () Bool)

(assert (= b_and!121 (and (=> t!287 result!97) b_and!123)))

(declare-fun b_lambda!5399 () Bool)

(assert (=> (not b_lambda!5399) (not b!16012)))

(declare-fun t!289 () Bool)

(declare-fun tb!99 () Bool)

(assert (=> (and start!2927 (= P!6 P!6) t!289) tb!99))

(declare-fun result!99 () Bool)

(assert (=> tb!99 (= result!99 true)))

(assert (=> b!16012 t!289))

(declare-fun b_and!125 () Bool)

(assert (= b_and!123 (and (=> t!289 result!99) b_and!125)))

(declare-fun b_lambda!5401 () Bool)

(assert (=> (not b_lambda!5401) (not b!16018)))

(declare-fun t!291 () Bool)

(declare-fun tb!101 () Bool)

(assert (=> (and start!2927 (= P!6 P!6) t!291) tb!101))

(declare-fun result!101 () Bool)

(assert (=> tb!101 (= result!101 true)))

(assert (=> b!16018 t!291))

(declare-fun b_and!127 () Bool)

(assert (= b_and!125 (and (=> t!291 result!101) b_and!127)))

(declare-fun b_lambda!5403 () Bool)

(assert (=> (not b_lambda!5403) (not b!16016)))

(declare-fun t!293 () Bool)

(declare-fun tb!103 () Bool)

(assert (=> (and start!2927 (= P!6 P!6) t!293) tb!103))

(declare-fun result!103 () Bool)

(assert (=> tb!103 (= result!103 true)))

(assert (=> b!16016 t!293))

(declare-fun b_and!129 () Bool)

(assert (= b_and!127 (and (=> t!293 result!103) b_and!129)))

(declare-fun b_lambda!5405 () Bool)

(assert (=> (not b_lambda!5405) (not b!16011)))

(declare-fun t!295 () Bool)

(declare-fun tb!105 () Bool)

(assert (=> (and start!2927 (= P!6 P!6) t!295) tb!105))

(declare-fun result!105 () Bool)

(assert (=> tb!105 (= result!105 true)))

(assert (=> b!16011 t!295))

(declare-fun b_and!131 () Bool)

(assert (= b_and!129 (and (=> t!295 result!105) b_and!131)))

(declare-fun b_lambda!5407 () Bool)

(assert (=> (not b_lambda!5407) (not b!16010)))

(declare-fun t!297 () Bool)

(declare-fun tb!107 () Bool)

(assert (=> (and start!2927 (= P!6 P!6) t!297) tb!107))

(declare-fun result!107 () Bool)

(assert (=> tb!107 (= result!107 true)))

(assert (=> b!16010 t!297))

(declare-fun b_and!133 () Bool)

(assert (= b_and!131 (and (=> t!297 result!107) b_and!133)))

(declare-fun b_lambda!5409 () Bool)

(assert (=> (not b_lambda!5409) (not b!16009)))

(declare-fun t!299 () Bool)

(declare-fun tb!109 () Bool)

(assert (=> (and start!2927 (= P!6 P!6) t!299) tb!109))

(declare-fun result!109 () Bool)

(assert (=> tb!109 (= result!109 true)))

(assert (=> b!16009 t!299))

(declare-fun b_and!135 () Bool)

(assert (= b_and!133 (and (=> t!299 result!109) b_and!135)))

(declare-fun m!22357 () Bool)

(assert (=> b!16014 m!22357))

(assert (=> b!16014 m!22357))

(declare-fun m!22359 () Bool)

(assert (=> b!16014 m!22359))

(declare-fun m!22361 () Bool)

(assert (=> b!16009 m!22361))

(assert (=> b!16009 m!22361))

(declare-fun m!22363 () Bool)

(assert (=> b!16009 m!22363))

(declare-fun m!22365 () Bool)

(assert (=> b!16010 m!22365))

(assert (=> b!16010 m!22365))

(declare-fun m!22367 () Bool)

(assert (=> b!16010 m!22367))

(declare-fun m!22369 () Bool)

(assert (=> b!16012 m!22369))

(assert (=> b!16012 m!22369))

(declare-fun m!22371 () Bool)

(assert (=> b!16012 m!22371))

(declare-fun m!22373 () Bool)

(assert (=> b!16011 m!22373))

(assert (=> b!16011 m!22373))

(declare-fun m!22375 () Bool)

(assert (=> b!16011 m!22375))

(declare-fun m!22377 () Bool)

(assert (=> b!16018 m!22377))

(assert (=> b!16018 m!22377))

(declare-fun m!22379 () Bool)

(assert (=> b!16018 m!22379))

(declare-fun m!22381 () Bool)

(assert (=> b!16013 m!22381))

(assert (=> b!16013 m!22381))

(declare-fun m!22383 () Bool)

(assert (=> b!16013 m!22383))

(declare-fun m!22385 () Bool)

(assert (=> b!16016 m!22385))

(assert (=> b!16016 m!22385))

(declare-fun m!22387 () Bool)

(assert (=> b!16016 m!22387))

(declare-fun m!22389 () Bool)

(assert (=> b!16015 m!22389))

(assert (=> b!16015 m!22389))

(declare-fun m!22391 () Bool)

(assert (=> b!16015 m!22391))

(declare-fun m!22393 () Bool)

(assert (=> start!2927 m!22393))

(check-sat (not b_lambda!5397) (not b_lambda!5399) (not b_lambda!5401) (not b_lambda!5395) (not b_lambda!5409) (not b_lambda!5393) (not start!2927) (not b_lambda!5407) (not b_lambda!5403) (not b_lambda!5405) (not b_next!25) b_and!135)
(check-sat b_and!135 (not b_next!25))
