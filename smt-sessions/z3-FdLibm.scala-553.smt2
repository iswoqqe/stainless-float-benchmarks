; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2925 () Bool)

(assert start!2925)

(declare-fun b_free!23 () Bool)

(declare-fun b_next!23 () Bool)

(assert (=> start!2925 (= b_free!23 (not b_next!23))))

(declare-fun tp!35 () Bool)

(declare-fun b_and!99 () Bool)

(assert (=> start!2925 (= tp!35 b_and!99)))

(declare-fun b!15980 () Bool)

(declare-fun e!9022 () Bool)

(declare-datatypes ((array!1359 0))(
  ( (array!1360 (arr!598 (Array (_ BitVec 32) (_ BitVec 32))) (size!598 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1359)

(assert (=> b!15980 (= e!9022 (bvsge #b00000000000000000000000000001000 (size!598 a!13)))))

(declare-fun res!12576 () Bool)

(assert (=> start!2925 (=> (not res!12576) (not e!9022))))

(assert (=> start!2925 (= res!12576 (= (size!598 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2925 e!9022))

(declare-fun array_inv!546 (array!1359) Bool)

(assert (=> start!2925 (array_inv!546 a!13)))

(assert (=> start!2925 tp!35))

(declare-fun b!15981 () Bool)

(declare-fun res!12575 () Bool)

(assert (=> b!15981 (=> (not res!12575) (not e!9022))))

(declare-fun P!6 () Int)

(declare-fun dynLambda!49 (Int (_ BitVec 32)) Bool)

(assert (=> b!15981 (= res!12575 (dynLambda!49 P!6 (select (arr!598 a!13) #b00000000000000000000000000000110)))))

(declare-fun b!15982 () Bool)

(declare-fun res!12572 () Bool)

(assert (=> b!15982 (=> (not res!12572) (not e!9022))))

(assert (=> b!15982 (= res!12572 (dynLambda!49 P!6 (select (arr!598 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!15983 () Bool)

(declare-fun res!12569 () Bool)

(assert (=> b!15983 (=> (not res!12569) (not e!9022))))

(assert (=> b!15983 (= res!12569 (dynLambda!49 P!6 (select (arr!598 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!15984 () Bool)

(declare-fun res!12574 () Bool)

(assert (=> b!15984 (=> (not res!12574) (not e!9022))))

(assert (=> b!15984 (= res!12574 (dynLambda!49 P!6 (select (arr!598 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!15985 () Bool)

(declare-fun res!12573 () Bool)

(assert (=> b!15985 (=> (not res!12573) (not e!9022))))

(assert (=> b!15985 (= res!12573 (dynLambda!49 P!6 (select (arr!598 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!15986 () Bool)

(declare-fun res!12571 () Bool)

(assert (=> b!15986 (=> (not res!12571) (not e!9022))))

(assert (=> b!15986 (= res!12571 (dynLambda!49 P!6 (select (arr!598 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!15987 () Bool)

(declare-fun res!12568 () Bool)

(assert (=> b!15987 (=> (not res!12568) (not e!9022))))

(assert (=> b!15987 (= res!12568 (dynLambda!49 P!6 (select (arr!598 a!13) #b00000000000000000000000000000111)))))

(declare-fun b!15988 () Bool)

(declare-fun res!12570 () Bool)

(assert (=> b!15988 (=> (not res!12570) (not e!9022))))

(assert (=> b!15988 (= res!12570 (dynLambda!49 P!6 (select (arr!598 a!13) #b00000000000000000000000000000100)))))

(assert (= (and start!2925 res!12576) b!15982))

(assert (= (and b!15982 res!12572) b!15984))

(assert (= (and b!15984 res!12574) b!15986))

(assert (= (and b!15986 res!12571) b!15983))

(assert (= (and b!15983 res!12569) b!15988))

(assert (= (and b!15988 res!12570) b!15985))

(assert (= (and b!15985 res!12573) b!15981))

(assert (= (and b!15981 res!12575) b!15987))

(assert (= (and b!15987 res!12568) b!15980))

(declare-fun b_lambda!5377 () Bool)

(assert (=> (not b_lambda!5377) (not b!15983)))

(declare-fun t!267 () Bool)

(declare-fun tb!77 () Bool)

(assert (=> (and start!2925 (= P!6 P!6) t!267) tb!77))

(declare-fun result!77 () Bool)

(assert (=> tb!77 (= result!77 true)))

(assert (=> b!15983 t!267))

(declare-fun b_and!101 () Bool)

(assert (= b_and!99 (and (=> t!267 result!77) b_and!101)))

(declare-fun b_lambda!5379 () Bool)

(assert (=> (not b_lambda!5379) (not b!15987)))

(declare-fun t!269 () Bool)

(declare-fun tb!79 () Bool)

(assert (=> (and start!2925 (= P!6 P!6) t!269) tb!79))

(declare-fun result!79 () Bool)

(assert (=> tb!79 (= result!79 true)))

(assert (=> b!15987 t!269))

(declare-fun b_and!103 () Bool)

(assert (= b_and!101 (and (=> t!269 result!79) b_and!103)))

(declare-fun b_lambda!5381 () Bool)

(assert (=> (not b_lambda!5381) (not b!15981)))

(declare-fun t!271 () Bool)

(declare-fun tb!81 () Bool)

(assert (=> (and start!2925 (= P!6 P!6) t!271) tb!81))

(declare-fun result!81 () Bool)

(assert (=> tb!81 (= result!81 true)))

(assert (=> b!15981 t!271))

(declare-fun b_and!105 () Bool)

(assert (= b_and!103 (and (=> t!271 result!81) b_and!105)))

(declare-fun b_lambda!5383 () Bool)

(assert (=> (not b_lambda!5383) (not b!15985)))

(declare-fun t!273 () Bool)

(declare-fun tb!83 () Bool)

(assert (=> (and start!2925 (= P!6 P!6) t!273) tb!83))

(declare-fun result!83 () Bool)

(assert (=> tb!83 (= result!83 true)))

(assert (=> b!15985 t!273))

(declare-fun b_and!107 () Bool)

(assert (= b_and!105 (and (=> t!273 result!83) b_and!107)))

(declare-fun b_lambda!5385 () Bool)

(assert (=> (not b_lambda!5385) (not b!15986)))

(declare-fun t!275 () Bool)

(declare-fun tb!85 () Bool)

(assert (=> (and start!2925 (= P!6 P!6) t!275) tb!85))

(declare-fun result!85 () Bool)

(assert (=> tb!85 (= result!85 true)))

(assert (=> b!15986 t!275))

(declare-fun b_and!109 () Bool)

(assert (= b_and!107 (and (=> t!275 result!85) b_and!109)))

(declare-fun b_lambda!5387 () Bool)

(assert (=> (not b_lambda!5387) (not b!15982)))

(declare-fun t!277 () Bool)

(declare-fun tb!87 () Bool)

(assert (=> (and start!2925 (= P!6 P!6) t!277) tb!87))

(declare-fun result!87 () Bool)

(assert (=> tb!87 (= result!87 true)))

(assert (=> b!15982 t!277))

(declare-fun b_and!111 () Bool)

(assert (= b_and!109 (and (=> t!277 result!87) b_and!111)))

(declare-fun b_lambda!5389 () Bool)

(assert (=> (not b_lambda!5389) (not b!15988)))

(declare-fun t!279 () Bool)

(declare-fun tb!89 () Bool)

(assert (=> (and start!2925 (= P!6 P!6) t!279) tb!89))

(declare-fun result!89 () Bool)

(assert (=> tb!89 (= result!89 true)))

(assert (=> b!15988 t!279))

(declare-fun b_and!113 () Bool)

(assert (= b_and!111 (and (=> t!279 result!89) b_and!113)))

(declare-fun b_lambda!5391 () Bool)

(assert (=> (not b_lambda!5391) (not b!15984)))

(declare-fun t!281 () Bool)

(declare-fun tb!91 () Bool)

(assert (=> (and start!2925 (= P!6 P!6) t!281) tb!91))

(declare-fun result!91 () Bool)

(assert (=> tb!91 (= result!91 true)))

(assert (=> b!15984 t!281))

(declare-fun b_and!115 () Bool)

(assert (= b_and!113 (and (=> t!281 result!91) b_and!115)))

(declare-fun m!22323 () Bool)

(assert (=> b!15988 m!22323))

(assert (=> b!15988 m!22323))

(declare-fun m!22325 () Bool)

(assert (=> b!15988 m!22325))

(declare-fun m!22327 () Bool)

(assert (=> start!2925 m!22327))

(declare-fun m!22329 () Bool)

(assert (=> b!15983 m!22329))

(assert (=> b!15983 m!22329))

(declare-fun m!22331 () Bool)

(assert (=> b!15983 m!22331))

(declare-fun m!22333 () Bool)

(assert (=> b!15986 m!22333))

(assert (=> b!15986 m!22333))

(declare-fun m!22335 () Bool)

(assert (=> b!15986 m!22335))

(declare-fun m!22337 () Bool)

(assert (=> b!15985 m!22337))

(assert (=> b!15985 m!22337))

(declare-fun m!22339 () Bool)

(assert (=> b!15985 m!22339))

(declare-fun m!22341 () Bool)

(assert (=> b!15982 m!22341))

(assert (=> b!15982 m!22341))

(declare-fun m!22343 () Bool)

(assert (=> b!15982 m!22343))

(declare-fun m!22345 () Bool)

(assert (=> b!15984 m!22345))

(assert (=> b!15984 m!22345))

(declare-fun m!22347 () Bool)

(assert (=> b!15984 m!22347))

(declare-fun m!22349 () Bool)

(assert (=> b!15981 m!22349))

(assert (=> b!15981 m!22349))

(declare-fun m!22351 () Bool)

(assert (=> b!15981 m!22351))

(declare-fun m!22353 () Bool)

(assert (=> b!15987 m!22353))

(assert (=> b!15987 m!22353))

(declare-fun m!22355 () Bool)

(assert (=> b!15987 m!22355))

(check-sat (not b_next!23) (not b_lambda!5385) (not b_lambda!5391) (not b_lambda!5377) (not b_lambda!5379) (not b_lambda!5389) (not b_lambda!5383) b_and!115 (not b_lambda!5387) (not b_lambda!5381) (not start!2925))
(check-sat b_and!115 (not b_next!23))
