; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3111 () Bool)

(assert start!3111)

(declare-fun b_free!23 () Bool)

(declare-fun b_next!23 () Bool)

(assert (=> start!3111 (= b_free!23 (not b_next!23))))

(declare-fun tp!35 () Bool)

(declare-fun b_and!99 () Bool)

(assert (=> start!3111 (= tp!35 b_and!99)))

(declare-fun b!17316 () Bool)

(declare-fun res!13748 () Bool)

(declare-fun e!9364 () Bool)

(assert (=> b!17316 (=> (not res!13748) (not e!9364))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1372 0))(
  ( (array!1373 (arr!598 (Array (_ BitVec 32) (_ BitVec 32))) (size!598 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1372)

(declare-fun dynLambda!54 (Int (_ BitVec 32)) Bool)

(assert (=> b!17316 (= res!13748 (dynLambda!54 P!6 (select (arr!598 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!17317 () Bool)

(declare-fun res!13752 () Bool)

(assert (=> b!17317 (=> (not res!13752) (not e!9364))))

(assert (=> b!17317 (= res!13752 (dynLambda!54 P!6 (select (arr!598 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!17319 () Bool)

(declare-fun res!13749 () Bool)

(assert (=> b!17319 (=> (not res!13749) (not e!9364))))

(assert (=> b!17319 (= res!13749 (dynLambda!54 P!6 (select (arr!598 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17320 () Bool)

(declare-fun res!13747 () Bool)

(assert (=> b!17320 (=> (not res!13747) (not e!9364))))

(assert (=> b!17320 (= res!13747 (dynLambda!54 P!6 (select (arr!598 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!17321 () Bool)

(assert (=> b!17321 (= e!9364 (bvsge #b00000000000000000000000000001000 (size!598 a!13)))))

(declare-fun b!17322 () Bool)

(declare-fun res!13745 () Bool)

(assert (=> b!17322 (=> (not res!13745) (not e!9364))))

(assert (=> b!17322 (= res!13745 (dynLambda!54 P!6 (select (arr!598 a!13) #b00000000000000000000000000000110)))))

(declare-fun res!13744 () Bool)

(assert (=> start!3111 (=> (not res!13744) (not e!9364))))

(assert (=> start!3111 (= res!13744 (= (size!598 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3111 e!9364))

(declare-fun array_inv!546 (array!1372) Bool)

(assert (=> start!3111 (array_inv!546 a!13)))

(assert (=> start!3111 tp!35))

(declare-fun b!17318 () Bool)

(declare-fun res!13750 () Bool)

(assert (=> b!17318 (=> (not res!13750) (not e!9364))))

(assert (=> b!17318 (= res!13750 (dynLambda!54 P!6 (select (arr!598 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!17323 () Bool)

(declare-fun res!13751 () Bool)

(assert (=> b!17323 (=> (not res!13751) (not e!9364))))

(assert (=> b!17323 (= res!13751 (dynLambda!54 P!6 (select (arr!598 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!17324 () Bool)

(declare-fun res!13746 () Bool)

(assert (=> b!17324 (=> (not res!13746) (not e!9364))))

(assert (=> b!17324 (= res!13746 (dynLambda!54 P!6 (select (arr!598 a!13) #b00000000000000000000000000000111)))))

(assert (= (and start!3111 res!13744) b!17323))

(assert (= (and b!17323 res!13751) b!17319))

(assert (= (and b!17319 res!13749) b!17316))

(assert (= (and b!17316 res!13748) b!17318))

(assert (= (and b!17318 res!13750) b!17320))

(assert (= (and b!17320 res!13747) b!17317))

(assert (= (and b!17317 res!13752) b!17322))

(assert (= (and b!17322 res!13745) b!17324))

(assert (= (and b!17324 res!13746) b!17321))

(declare-fun b_lambda!8017 () Bool)

(assert (=> (not b_lambda!8017) (not b!17320)))

(declare-fun t!267 () Bool)

(declare-fun tb!77 () Bool)

(assert (=> (and start!3111 (= P!6 P!6) t!267) tb!77))

(declare-fun result!77 () Bool)

(assert (=> tb!77 (= result!77 true)))

(assert (=> b!17320 t!267))

(declare-fun b_and!101 () Bool)

(assert (= b_and!99 (and (=> t!267 result!77) b_and!101)))

(declare-fun b_lambda!8019 () Bool)

(assert (=> (not b_lambda!8019) (not b!17318)))

(declare-fun t!269 () Bool)

(declare-fun tb!79 () Bool)

(assert (=> (and start!3111 (= P!6 P!6) t!269) tb!79))

(declare-fun result!79 () Bool)

(assert (=> tb!79 (= result!79 true)))

(assert (=> b!17318 t!269))

(declare-fun b_and!103 () Bool)

(assert (= b_and!101 (and (=> t!269 result!79) b_and!103)))

(declare-fun b_lambda!8021 () Bool)

(assert (=> (not b_lambda!8021) (not b!17324)))

(declare-fun t!271 () Bool)

(declare-fun tb!81 () Bool)

(assert (=> (and start!3111 (= P!6 P!6) t!271) tb!81))

(declare-fun result!81 () Bool)

(assert (=> tb!81 (= result!81 true)))

(assert (=> b!17324 t!271))

(declare-fun b_and!105 () Bool)

(assert (= b_and!103 (and (=> t!271 result!81) b_and!105)))

(declare-fun b_lambda!8023 () Bool)

(assert (=> (not b_lambda!8023) (not b!17317)))

(declare-fun t!273 () Bool)

(declare-fun tb!83 () Bool)

(assert (=> (and start!3111 (= P!6 P!6) t!273) tb!83))

(declare-fun result!83 () Bool)

(assert (=> tb!83 (= result!83 true)))

(assert (=> b!17317 t!273))

(declare-fun b_and!107 () Bool)

(assert (= b_and!105 (and (=> t!273 result!83) b_and!107)))

(declare-fun b_lambda!8025 () Bool)

(assert (=> (not b_lambda!8025) (not b!17323)))

(declare-fun t!275 () Bool)

(declare-fun tb!85 () Bool)

(assert (=> (and start!3111 (= P!6 P!6) t!275) tb!85))

(declare-fun result!85 () Bool)

(assert (=> tb!85 (= result!85 true)))

(assert (=> b!17323 t!275))

(declare-fun b_and!109 () Bool)

(assert (= b_and!107 (and (=> t!275 result!85) b_and!109)))

(declare-fun b_lambda!8027 () Bool)

(assert (=> (not b_lambda!8027) (not b!17316)))

(declare-fun t!277 () Bool)

(declare-fun tb!87 () Bool)

(assert (=> (and start!3111 (= P!6 P!6) t!277) tb!87))

(declare-fun result!87 () Bool)

(assert (=> tb!87 (= result!87 true)))

(assert (=> b!17316 t!277))

(declare-fun b_and!111 () Bool)

(assert (= b_and!109 (and (=> t!277 result!87) b_and!111)))

(declare-fun b_lambda!8029 () Bool)

(assert (=> (not b_lambda!8029) (not b!17322)))

(declare-fun t!279 () Bool)

(declare-fun tb!89 () Bool)

(assert (=> (and start!3111 (= P!6 P!6) t!279) tb!89))

(declare-fun result!89 () Bool)

(assert (=> tb!89 (= result!89 true)))

(assert (=> b!17322 t!279))

(declare-fun b_and!113 () Bool)

(assert (= b_and!111 (and (=> t!279 result!89) b_and!113)))

(declare-fun b_lambda!8031 () Bool)

(assert (=> (not b_lambda!8031) (not b!17319)))

(declare-fun t!281 () Bool)

(declare-fun tb!91 () Bool)

(assert (=> (and start!3111 (= P!6 P!6) t!281) tb!91))

(declare-fun result!91 () Bool)

(assert (=> tb!91 (= result!91 true)))

(assert (=> b!17319 t!281))

(declare-fun b_and!115 () Bool)

(assert (= b_and!113 (and (=> t!281 result!91) b_and!115)))

(declare-fun m!27501 () Bool)

(assert (=> b!17324 m!27501))

(assert (=> b!17324 m!27501))

(declare-fun m!27503 () Bool)

(assert (=> b!17324 m!27503))

(declare-fun m!27505 () Bool)

(assert (=> b!17318 m!27505))

(assert (=> b!17318 m!27505))

(declare-fun m!27507 () Bool)

(assert (=> b!17318 m!27507))

(declare-fun m!27509 () Bool)

(assert (=> b!17320 m!27509))

(assert (=> b!17320 m!27509))

(declare-fun m!27511 () Bool)

(assert (=> b!17320 m!27511))

(declare-fun m!27513 () Bool)

(assert (=> b!17317 m!27513))

(assert (=> b!17317 m!27513))

(declare-fun m!27515 () Bool)

(assert (=> b!17317 m!27515))

(declare-fun m!27517 () Bool)

(assert (=> b!17323 m!27517))

(assert (=> b!17323 m!27517))

(declare-fun m!27519 () Bool)

(assert (=> b!17323 m!27519))

(declare-fun m!27521 () Bool)

(assert (=> b!17316 m!27521))

(assert (=> b!17316 m!27521))

(declare-fun m!27523 () Bool)

(assert (=> b!17316 m!27523))

(declare-fun m!27525 () Bool)

(assert (=> start!3111 m!27525))

(declare-fun m!27527 () Bool)

(assert (=> b!17319 m!27527))

(assert (=> b!17319 m!27527))

(declare-fun m!27529 () Bool)

(assert (=> b!17319 m!27529))

(declare-fun m!27531 () Bool)

(assert (=> b!17322 m!27531))

(assert (=> b!17322 m!27531))

(declare-fun m!27533 () Bool)

(assert (=> b!17322 m!27533))

(push 1)

(assert b_and!115)

(assert (not b_lambda!8027))

(assert (not b_lambda!8019))

(assert (not b_lambda!8017))

(assert (not b_lambda!8029))

(assert (not b_lambda!8023))

(assert (not b_lambda!8031))

(assert (not start!3111))

(assert (not b_lambda!8025))

(assert (not b_next!23))

(assert (not b_lambda!8021))

(check-sat)

(pop 1)

(push 1)

(assert b_and!115)

(assert (not b_next!23))

(check-sat)

(pop 1)

