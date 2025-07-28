; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2959 () Bool)

(assert start!2959)

(declare-fun b_free!25 () Bool)

(declare-fun b_next!25 () Bool)

(assert (=> start!2959 (= b_free!25 (not b_next!25))))

(declare-fun tp!38 () Bool)

(declare-fun b_and!117 () Bool)

(assert (=> start!2959 (= tp!38 b_and!117)))

(declare-fun b!16475 () Bool)

(declare-fun res!13025 () Bool)

(declare-fun e!9117 () Bool)

(assert (=> b!16475 (=> (not res!13025) (not e!9117))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1364 0))(
  ( (array!1365 (arr!599 (Array (_ BitVec 32) (_ BitVec 32))) (size!599 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1364)

(declare-fun dynLambda!51 (Int (_ BitVec 32)) Bool)

(assert (=> b!16475 (= res!13025 (dynLambda!51 P!6 (select (arr!599 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!16476 () Bool)

(declare-fun res!13024 () Bool)

(assert (=> b!16476 (=> (not res!13024) (not e!9117))))

(assert (=> b!16476 (= res!13024 (dynLambda!51 P!6 (select (arr!599 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!16477 () Bool)

(declare-fun res!13023 () Bool)

(assert (=> b!16477 (=> (not res!13023) (not e!9117))))

(assert (=> b!16477 (= res!13023 (dynLambda!51 P!6 (select (arr!599 a!13) #b00000000000000000000000000001000)))))

(declare-fun b!16478 () Bool)

(declare-fun res!13031 () Bool)

(assert (=> b!16478 (=> (not res!13031) (not e!9117))))

(assert (=> b!16478 (= res!13031 (dynLambda!51 P!6 (select (arr!599 a!13) #b00000000000000000000000000000111)))))

(declare-fun b!16479 () Bool)

(declare-fun res!13028 () Bool)

(assert (=> b!16479 (=> (not res!13028) (not e!9117))))

(assert (=> b!16479 (= res!13028 (dynLambda!51 P!6 (select (arr!599 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!16480 () Bool)

(declare-fun res!13030 () Bool)

(assert (=> b!16480 (=> (not res!13030) (not e!9117))))

(assert (=> b!16480 (= res!13030 (dynLambda!51 P!6 (select (arr!599 a!13) #b00000000000000000000000000000110)))))

(declare-fun res!13026 () Bool)

(assert (=> start!2959 (=> (not res!13026) (not e!9117))))

(assert (=> start!2959 (= res!13026 (= (size!599 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2959 e!9117))

(declare-fun array_inv!547 (array!1364) Bool)

(assert (=> start!2959 (array_inv!547 a!13)))

(assert (=> start!2959 tp!38))

(declare-fun b!16481 () Bool)

(assert (=> b!16481 (= e!9117 (bvsge #b00000000000000000000000000001001 (size!599 a!13)))))

(declare-fun b!16482 () Bool)

(declare-fun res!13029 () Bool)

(assert (=> b!16482 (=> (not res!13029) (not e!9117))))

(assert (=> b!16482 (= res!13029 (dynLambda!51 P!6 (select (arr!599 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!16483 () Bool)

(declare-fun res!13027 () Bool)

(assert (=> b!16483 (=> (not res!13027) (not e!9117))))

(assert (=> b!16483 (= res!13027 (dynLambda!51 P!6 (select (arr!599 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!16484 () Bool)

(declare-fun res!13032 () Bool)

(assert (=> b!16484 (=> (not res!13032) (not e!9117))))

(assert (=> b!16484 (= res!13032 (dynLambda!51 P!6 (select (arr!599 a!13) #b00000000000000000000000000000010)))))

(assert (= (and start!2959 res!13026) b!16479))

(assert (= (and b!16479 res!13028) b!16476))

(assert (= (and b!16476 res!13024) b!16484))

(assert (= (and b!16484 res!13032) b!16483))

(assert (= (and b!16483 res!13027) b!16482))

(assert (= (and b!16482 res!13029) b!16475))

(assert (= (and b!16475 res!13025) b!16480))

(assert (= (and b!16480 res!13030) b!16478))

(assert (= (and b!16478 res!13031) b!16477))

(assert (= (and b!16477 res!13023) b!16481))

(declare-fun b_lambda!6673 () Bool)

(assert (=> (not b_lambda!6673) (not b!16480)))

(declare-fun t!283 () Bool)

(declare-fun tb!93 () Bool)

(assert (=> (and start!2959 (= P!6 P!6) t!283) tb!93))

(declare-fun result!93 () Bool)

(assert (=> tb!93 (= result!93 true)))

(assert (=> b!16480 t!283))

(declare-fun b_and!119 () Bool)

(assert (= b_and!117 (and (=> t!283 result!93) b_and!119)))

(declare-fun b_lambda!6675 () Bool)

(assert (=> (not b_lambda!6675) (not b!16484)))

(declare-fun t!285 () Bool)

(declare-fun tb!95 () Bool)

(assert (=> (and start!2959 (= P!6 P!6) t!285) tb!95))

(declare-fun result!95 () Bool)

(assert (=> tb!95 (= result!95 true)))

(assert (=> b!16484 t!285))

(declare-fun b_and!121 () Bool)

(assert (= b_and!119 (and (=> t!285 result!95) b_and!121)))

(declare-fun b_lambda!6677 () Bool)

(assert (=> (not b_lambda!6677) (not b!16478)))

(declare-fun t!287 () Bool)

(declare-fun tb!97 () Bool)

(assert (=> (and start!2959 (= P!6 P!6) t!287) tb!97))

(declare-fun result!97 () Bool)

(assert (=> tb!97 (= result!97 true)))

(assert (=> b!16478 t!287))

(declare-fun b_and!123 () Bool)

(assert (= b_and!121 (and (=> t!287 result!97) b_and!123)))

(declare-fun b_lambda!6679 () Bool)

(assert (=> (not b_lambda!6679) (not b!16476)))

(declare-fun t!289 () Bool)

(declare-fun tb!99 () Bool)

(assert (=> (and start!2959 (= P!6 P!6) t!289) tb!99))

(declare-fun result!99 () Bool)

(assert (=> tb!99 (= result!99 true)))

(assert (=> b!16476 t!289))

(declare-fun b_and!125 () Bool)

(assert (= b_and!123 (and (=> t!289 result!99) b_and!125)))

(declare-fun b_lambda!6681 () Bool)

(assert (=> (not b_lambda!6681) (not b!16477)))

(declare-fun t!291 () Bool)

(declare-fun tb!101 () Bool)

(assert (=> (and start!2959 (= P!6 P!6) t!291) tb!101))

(declare-fun result!101 () Bool)

(assert (=> tb!101 (= result!101 true)))

(assert (=> b!16477 t!291))

(declare-fun b_and!127 () Bool)

(assert (= b_and!125 (and (=> t!291 result!101) b_and!127)))

(declare-fun b_lambda!6683 () Bool)

(assert (=> (not b_lambda!6683) (not b!16483)))

(declare-fun t!293 () Bool)

(declare-fun tb!103 () Bool)

(assert (=> (and start!2959 (= P!6 P!6) t!293) tb!103))

(declare-fun result!103 () Bool)

(assert (=> tb!103 (= result!103 true)))

(assert (=> b!16483 t!293))

(declare-fun b_and!129 () Bool)

(assert (= b_and!127 (and (=> t!293 result!103) b_and!129)))

(declare-fun b_lambda!6685 () Bool)

(assert (=> (not b_lambda!6685) (not b!16479)))

(declare-fun t!295 () Bool)

(declare-fun tb!105 () Bool)

(assert (=> (and start!2959 (= P!6 P!6) t!295) tb!105))

(declare-fun result!105 () Bool)

(assert (=> tb!105 (= result!105 true)))

(assert (=> b!16479 t!295))

(declare-fun b_and!131 () Bool)

(assert (= b_and!129 (and (=> t!295 result!105) b_and!131)))

(declare-fun b_lambda!6687 () Bool)

(assert (=> (not b_lambda!6687) (not b!16482)))

(declare-fun t!297 () Bool)

(declare-fun tb!107 () Bool)

(assert (=> (and start!2959 (= P!6 P!6) t!297) tb!107))

(declare-fun result!107 () Bool)

(assert (=> tb!107 (= result!107 true)))

(assert (=> b!16482 t!297))

(declare-fun b_and!133 () Bool)

(assert (= b_and!131 (and (=> t!297 result!107) b_and!133)))

(declare-fun b_lambda!6689 () Bool)

(assert (=> (not b_lambda!6689) (not b!16475)))

(declare-fun t!299 () Bool)

(declare-fun tb!109 () Bool)

(assert (=> (and start!2959 (= P!6 P!6) t!299) tb!109))

(declare-fun result!109 () Bool)

(assert (=> tb!109 (= result!109 true)))

(assert (=> b!16475 t!299))

(declare-fun b_and!135 () Bool)

(assert (= b_and!133 (and (=> t!299 result!109) b_and!135)))

(declare-fun m!24691 () Bool)

(assert (=> b!16475 m!24691))

(assert (=> b!16475 m!24691))

(declare-fun m!24693 () Bool)

(assert (=> b!16475 m!24693))

(declare-fun m!24695 () Bool)

(assert (=> b!16480 m!24695))

(assert (=> b!16480 m!24695))

(declare-fun m!24697 () Bool)

(assert (=> b!16480 m!24697))

(declare-fun m!24699 () Bool)

(assert (=> b!16477 m!24699))

(assert (=> b!16477 m!24699))

(declare-fun m!24701 () Bool)

(assert (=> b!16477 m!24701))

(declare-fun m!24703 () Bool)

(assert (=> b!16476 m!24703))

(assert (=> b!16476 m!24703))

(declare-fun m!24705 () Bool)

(assert (=> b!16476 m!24705))

(declare-fun m!24707 () Bool)

(assert (=> b!16483 m!24707))

(assert (=> b!16483 m!24707))

(declare-fun m!24709 () Bool)

(assert (=> b!16483 m!24709))

(declare-fun m!24711 () Bool)

(assert (=> b!16478 m!24711))

(assert (=> b!16478 m!24711))

(declare-fun m!24713 () Bool)

(assert (=> b!16478 m!24713))

(declare-fun m!24715 () Bool)

(assert (=> b!16484 m!24715))

(assert (=> b!16484 m!24715))

(declare-fun m!24717 () Bool)

(assert (=> b!16484 m!24717))

(declare-fun m!24719 () Bool)

(assert (=> start!2959 m!24719))

(declare-fun m!24721 () Bool)

(assert (=> b!16479 m!24721))

(assert (=> b!16479 m!24721))

(declare-fun m!24723 () Bool)

(assert (=> b!16479 m!24723))

(declare-fun m!24725 () Bool)

(assert (=> b!16482 m!24725))

(assert (=> b!16482 m!24725))

(declare-fun m!24727 () Bool)

(assert (=> b!16482 m!24727))

(check-sat (not b_lambda!6685) (not b_lambda!6673) (not start!2959) (not b_lambda!6679) (not b_lambda!6675) b_and!135 (not b_lambda!6687) (not b_lambda!6689) (not b_next!25) (not b_lambda!6677) (not b_lambda!6681) (not b_lambda!6683))
(check-sat b_and!135 (not b_next!25))
