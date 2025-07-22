; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3113 () Bool)

(assert start!3113)

(declare-fun b_free!25 () Bool)

(declare-fun b_next!25 () Bool)

(assert (=> start!3113 (= b_free!25 (not b_next!25))))

(declare-fun tp!38 () Bool)

(declare-fun b_and!117 () Bool)

(assert (=> start!3113 (= tp!38 b_and!117)))

(declare-fun b!17345 () Bool)

(declare-fun res!13782 () Bool)

(declare-fun e!9370 () Bool)

(assert (=> b!17345 (=> (not res!13782) (not e!9370))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1374 0))(
  ( (array!1375 (arr!599 (Array (_ BitVec 32) (_ BitVec 32))) (size!599 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1374)

(declare-fun dynLambda!55 (Int (_ BitVec 32)) Bool)

(assert (=> b!17345 (= res!13782 (dynLambda!55 P!6 (select (arr!599 a!13) #b00000000000000000000000000000000)))))

(declare-fun res!13778 () Bool)

(assert (=> start!3113 (=> (not res!13778) (not e!9370))))

(assert (=> start!3113 (= res!13778 (= (size!599 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3113 e!9370))

(declare-fun array_inv!547 (array!1374) Bool)

(assert (=> start!3113 (array_inv!547 a!13)))

(assert (=> start!3113 tp!38))

(declare-fun b!17346 () Bool)

(declare-fun res!13779 () Bool)

(assert (=> b!17346 (=> (not res!13779) (not e!9370))))

(assert (=> b!17346 (= res!13779 (dynLambda!55 P!6 (select (arr!599 a!13) #b00000000000000000000000000000110)))))

(declare-fun b!17347 () Bool)

(declare-fun res!13781 () Bool)

(assert (=> b!17347 (=> (not res!13781) (not e!9370))))

(assert (=> b!17347 (= res!13781 (dynLambda!55 P!6 (select (arr!599 a!13) #b00000000000000000000000000001000)))))

(declare-fun b!17348 () Bool)

(declare-fun res!13774 () Bool)

(assert (=> b!17348 (=> (not res!13774) (not e!9370))))

(assert (=> b!17348 (= res!13774 (dynLambda!55 P!6 (select (arr!599 a!13) #b00000000000000000000000000000111)))))

(declare-fun b!17349 () Bool)

(declare-fun res!13773 () Bool)

(assert (=> b!17349 (=> (not res!13773) (not e!9370))))

(assert (=> b!17349 (= res!13773 (dynLambda!55 P!6 (select (arr!599 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17350 () Bool)

(declare-fun res!13776 () Bool)

(assert (=> b!17350 (=> (not res!13776) (not e!9370))))

(assert (=> b!17350 (= res!13776 (dynLambda!55 P!6 (select (arr!599 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!17351 () Bool)

(declare-fun res!13775 () Bool)

(assert (=> b!17351 (=> (not res!13775) (not e!9370))))

(assert (=> b!17351 (= res!13775 (dynLambda!55 P!6 (select (arr!599 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!17352 () Bool)

(assert (=> b!17352 (= e!9370 (bvsge #b00000000000000000000000000001001 (size!599 a!13)))))

(declare-fun b!17353 () Bool)

(declare-fun res!13780 () Bool)

(assert (=> b!17353 (=> (not res!13780) (not e!9370))))

(assert (=> b!17353 (= res!13780 (dynLambda!55 P!6 (select (arr!599 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!17354 () Bool)

(declare-fun res!13777 () Bool)

(assert (=> b!17354 (=> (not res!13777) (not e!9370))))

(assert (=> b!17354 (= res!13777 (dynLambda!55 P!6 (select (arr!599 a!13) #b00000000000000000000000000000101)))))

(assert (= (and start!3113 res!13778) b!17345))

(assert (= (and b!17345 res!13782) b!17349))

(assert (= (and b!17349 res!13773) b!17351))

(assert (= (and b!17351 res!13775) b!17353))

(assert (= (and b!17353 res!13780) b!17350))

(assert (= (and b!17350 res!13776) b!17354))

(assert (= (and b!17354 res!13777) b!17346))

(assert (= (and b!17346 res!13779) b!17348))

(assert (= (and b!17348 res!13774) b!17347))

(assert (= (and b!17347 res!13781) b!17352))

(declare-fun b_lambda!8033 () Bool)

(assert (=> (not b_lambda!8033) (not b!17345)))

(declare-fun t!283 () Bool)

(declare-fun tb!93 () Bool)

(assert (=> (and start!3113 (= P!6 P!6) t!283) tb!93))

(declare-fun result!93 () Bool)

(assert (=> tb!93 (= result!93 true)))

(assert (=> b!17345 t!283))

(declare-fun b_and!119 () Bool)

(assert (= b_and!117 (and (=> t!283 result!93) b_and!119)))

(declare-fun b_lambda!8035 () Bool)

(assert (=> (not b_lambda!8035) (not b!17347)))

(declare-fun t!285 () Bool)

(declare-fun tb!95 () Bool)

(assert (=> (and start!3113 (= P!6 P!6) t!285) tb!95))

(declare-fun result!95 () Bool)

(assert (=> tb!95 (= result!95 true)))

(assert (=> b!17347 t!285))

(declare-fun b_and!121 () Bool)

(assert (= b_and!119 (and (=> t!285 result!95) b_and!121)))

(declare-fun b_lambda!8037 () Bool)

(assert (=> (not b_lambda!8037) (not b!17349)))

(declare-fun t!287 () Bool)

(declare-fun tb!97 () Bool)

(assert (=> (and start!3113 (= P!6 P!6) t!287) tb!97))

(declare-fun result!97 () Bool)

(assert (=> tb!97 (= result!97 true)))

(assert (=> b!17349 t!287))

(declare-fun b_and!123 () Bool)

(assert (= b_and!121 (and (=> t!287 result!97) b_and!123)))

(declare-fun b_lambda!8039 () Bool)

(assert (=> (not b_lambda!8039) (not b!17350)))

(declare-fun t!289 () Bool)

(declare-fun tb!99 () Bool)

(assert (=> (and start!3113 (= P!6 P!6) t!289) tb!99))

(declare-fun result!99 () Bool)

(assert (=> tb!99 (= result!99 true)))

(assert (=> b!17350 t!289))

(declare-fun b_and!125 () Bool)

(assert (= b_and!123 (and (=> t!289 result!99) b_and!125)))

(declare-fun b_lambda!8041 () Bool)

(assert (=> (not b_lambda!8041) (not b!17351)))

(declare-fun t!291 () Bool)

(declare-fun tb!101 () Bool)

(assert (=> (and start!3113 (= P!6 P!6) t!291) tb!101))

(declare-fun result!101 () Bool)

(assert (=> tb!101 (= result!101 true)))

(assert (=> b!17351 t!291))

(declare-fun b_and!127 () Bool)

(assert (= b_and!125 (and (=> t!291 result!101) b_and!127)))

(declare-fun b_lambda!8043 () Bool)

(assert (=> (not b_lambda!8043) (not b!17353)))

(declare-fun t!293 () Bool)

(declare-fun tb!103 () Bool)

(assert (=> (and start!3113 (= P!6 P!6) t!293) tb!103))

(declare-fun result!103 () Bool)

(assert (=> tb!103 (= result!103 true)))

(assert (=> b!17353 t!293))

(declare-fun b_and!129 () Bool)

(assert (= b_and!127 (and (=> t!293 result!103) b_and!129)))

(declare-fun b_lambda!8045 () Bool)

(assert (=> (not b_lambda!8045) (not b!17348)))

(declare-fun t!295 () Bool)

(declare-fun tb!105 () Bool)

(assert (=> (and start!3113 (= P!6 P!6) t!295) tb!105))

(declare-fun result!105 () Bool)

(assert (=> tb!105 (= result!105 true)))

(assert (=> b!17348 t!295))

(declare-fun b_and!131 () Bool)

(assert (= b_and!129 (and (=> t!295 result!105) b_and!131)))

(declare-fun b_lambda!8047 () Bool)

(assert (=> (not b_lambda!8047) (not b!17346)))

(declare-fun t!297 () Bool)

(declare-fun tb!107 () Bool)

(assert (=> (and start!3113 (= P!6 P!6) t!297) tb!107))

(declare-fun result!107 () Bool)

(assert (=> tb!107 (= result!107 true)))

(assert (=> b!17346 t!297))

(declare-fun b_and!133 () Bool)

(assert (= b_and!131 (and (=> t!297 result!107) b_and!133)))

(declare-fun b_lambda!8049 () Bool)

(assert (=> (not b_lambda!8049) (not b!17354)))

(declare-fun t!299 () Bool)

(declare-fun tb!109 () Bool)

(assert (=> (and start!3113 (= P!6 P!6) t!299) tb!109))

(declare-fun result!109 () Bool)

(assert (=> tb!109 (= result!109 true)))

(assert (=> b!17354 t!299))

(declare-fun b_and!135 () Bool)

(assert (= b_and!133 (and (=> t!299 result!109) b_and!135)))

(declare-fun m!27535 () Bool)

(assert (=> b!17353 m!27535))

(assert (=> b!17353 m!27535))

(declare-fun m!27537 () Bool)

(assert (=> b!17353 m!27537))

(declare-fun m!27539 () Bool)

(assert (=> b!17351 m!27539))

(assert (=> b!17351 m!27539))

(declare-fun m!27541 () Bool)

(assert (=> b!17351 m!27541))

(declare-fun m!27543 () Bool)

(assert (=> b!17349 m!27543))

(assert (=> b!17349 m!27543))

(declare-fun m!27545 () Bool)

(assert (=> b!17349 m!27545))

(declare-fun m!27547 () Bool)

(assert (=> b!17347 m!27547))

(assert (=> b!17347 m!27547))

(declare-fun m!27549 () Bool)

(assert (=> b!17347 m!27549))

(declare-fun m!27551 () Bool)

(assert (=> b!17345 m!27551))

(assert (=> b!17345 m!27551))

(declare-fun m!27553 () Bool)

(assert (=> b!17345 m!27553))

(declare-fun m!27555 () Bool)

(assert (=> b!17346 m!27555))

(assert (=> b!17346 m!27555))

(declare-fun m!27557 () Bool)

(assert (=> b!17346 m!27557))

(declare-fun m!27559 () Bool)

(assert (=> b!17348 m!27559))

(assert (=> b!17348 m!27559))

(declare-fun m!27561 () Bool)

(assert (=> b!17348 m!27561))

(declare-fun m!27563 () Bool)

(assert (=> b!17354 m!27563))

(assert (=> b!17354 m!27563))

(declare-fun m!27565 () Bool)

(assert (=> b!17354 m!27565))

(declare-fun m!27567 () Bool)

(assert (=> b!17350 m!27567))

(assert (=> b!17350 m!27567))

(declare-fun m!27569 () Bool)

(assert (=> b!17350 m!27569))

(declare-fun m!27571 () Bool)

(assert (=> start!3113 m!27571))

(push 1)

(assert (not start!3113))

(assert (not b_lambda!8037))

(assert (not b_lambda!8047))

(assert (not b_next!25))

(assert (not b_lambda!8033))

(assert (not b_lambda!8043))

(assert (not b_lambda!8045))

(assert b_and!135)

(assert (not b_lambda!8041))

(assert (not b_lambda!8049))

(assert (not b_lambda!8035))

(assert (not b_lambda!8039))

(check-sat)

(pop 1)

(push 1)

(assert b_and!135)

(assert (not b_next!25))

(check-sat)

(pop 1)

