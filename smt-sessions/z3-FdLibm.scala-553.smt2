; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2957 () Bool)

(assert start!2957)

(declare-fun b_free!23 () Bool)

(declare-fun b_next!23 () Bool)

(assert (=> start!2957 (= b_free!23 (not b_next!23))))

(declare-fun tp!35 () Bool)

(declare-fun b_and!99 () Bool)

(assert (=> start!2957 (= tp!35 b_and!99)))

(declare-fun b!16446 () Bool)

(declare-fun res!12994 () Bool)

(declare-fun e!9111 () Bool)

(assert (=> b!16446 (=> (not res!12994) (not e!9111))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1362 0))(
  ( (array!1363 (arr!598 (Array (_ BitVec 32) (_ BitVec 32))) (size!598 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1362)

(declare-fun dynLambda!50 (Int (_ BitVec 32)) Bool)

(assert (=> b!16446 (= res!12994 (dynLambda!50 P!6 (select (arr!598 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!16447 () Bool)

(declare-fun res!12995 () Bool)

(assert (=> b!16447 (=> (not res!12995) (not e!9111))))

(assert (=> b!16447 (= res!12995 (dynLambda!50 P!6 (select (arr!598 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!16448 () Bool)

(declare-fun res!12998 () Bool)

(assert (=> b!16448 (=> (not res!12998) (not e!9111))))

(assert (=> b!16448 (= res!12998 (dynLambda!50 P!6 (select (arr!598 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!16449 () Bool)

(assert (=> b!16449 (= e!9111 (bvsge #b00000000000000000000000000001000 (size!598 a!13)))))

(declare-fun b!16450 () Bool)

(declare-fun res!13001 () Bool)

(assert (=> b!16450 (=> (not res!13001) (not e!9111))))

(assert (=> b!16450 (= res!13001 (dynLambda!50 P!6 (select (arr!598 a!13) #b00000000000000000000000000000111)))))

(declare-fun res!12997 () Bool)

(assert (=> start!2957 (=> (not res!12997) (not e!9111))))

(assert (=> start!2957 (= res!12997 (= (size!598 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2957 e!9111))

(declare-fun array_inv!546 (array!1362) Bool)

(assert (=> start!2957 (array_inv!546 a!13)))

(assert (=> start!2957 tp!35))

(declare-fun b!16451 () Bool)

(declare-fun res!13000 () Bool)

(assert (=> b!16451 (=> (not res!13000) (not e!9111))))

(assert (=> b!16451 (= res!13000 (dynLambda!50 P!6 (select (arr!598 a!13) #b00000000000000000000000000000110)))))

(declare-fun b!16452 () Bool)

(declare-fun res!12999 () Bool)

(assert (=> b!16452 (=> (not res!12999) (not e!9111))))

(assert (=> b!16452 (= res!12999 (dynLambda!50 P!6 (select (arr!598 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!16453 () Bool)

(declare-fun res!12996 () Bool)

(assert (=> b!16453 (=> (not res!12996) (not e!9111))))

(assert (=> b!16453 (= res!12996 (dynLambda!50 P!6 (select (arr!598 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!16454 () Bool)

(declare-fun res!13002 () Bool)

(assert (=> b!16454 (=> (not res!13002) (not e!9111))))

(assert (=> b!16454 (= res!13002 (dynLambda!50 P!6 (select (arr!598 a!13) #b00000000000000000000000000000000)))))

(assert (= (and start!2957 res!12997) b!16454))

(assert (= (and b!16454 res!13002) b!16452))

(assert (= (and b!16452 res!12999) b!16447))

(assert (= (and b!16447 res!12995) b!16446))

(assert (= (and b!16446 res!12994) b!16448))

(assert (= (and b!16448 res!12998) b!16453))

(assert (= (and b!16453 res!12996) b!16451))

(assert (= (and b!16451 res!13000) b!16450))

(assert (= (and b!16450 res!13001) b!16449))

(declare-fun b_lambda!6657 () Bool)

(assert (=> (not b_lambda!6657) (not b!16447)))

(declare-fun t!267 () Bool)

(declare-fun tb!77 () Bool)

(assert (=> (and start!2957 (= P!6 P!6) t!267) tb!77))

(declare-fun result!77 () Bool)

(assert (=> tb!77 (= result!77 true)))

(assert (=> b!16447 t!267))

(declare-fun b_and!101 () Bool)

(assert (= b_and!99 (and (=> t!267 result!77) b_and!101)))

(declare-fun b_lambda!6659 () Bool)

(assert (=> (not b_lambda!6659) (not b!16452)))

(declare-fun t!269 () Bool)

(declare-fun tb!79 () Bool)

(assert (=> (and start!2957 (= P!6 P!6) t!269) tb!79))

(declare-fun result!79 () Bool)

(assert (=> tb!79 (= result!79 true)))

(assert (=> b!16452 t!269))

(declare-fun b_and!103 () Bool)

(assert (= b_and!101 (and (=> t!269 result!79) b_and!103)))

(declare-fun b_lambda!6661 () Bool)

(assert (=> (not b_lambda!6661) (not b!16448)))

(declare-fun t!271 () Bool)

(declare-fun tb!81 () Bool)

(assert (=> (and start!2957 (= P!6 P!6) t!271) tb!81))

(declare-fun result!81 () Bool)

(assert (=> tb!81 (= result!81 true)))

(assert (=> b!16448 t!271))

(declare-fun b_and!105 () Bool)

(assert (= b_and!103 (and (=> t!271 result!81) b_and!105)))

(declare-fun b_lambda!6663 () Bool)

(assert (=> (not b_lambda!6663) (not b!16453)))

(declare-fun t!273 () Bool)

(declare-fun tb!83 () Bool)

(assert (=> (and start!2957 (= P!6 P!6) t!273) tb!83))

(declare-fun result!83 () Bool)

(assert (=> tb!83 (= result!83 true)))

(assert (=> b!16453 t!273))

(declare-fun b_and!107 () Bool)

(assert (= b_and!105 (and (=> t!273 result!83) b_and!107)))

(declare-fun b_lambda!6665 () Bool)

(assert (=> (not b_lambda!6665) (not b!16454)))

(declare-fun t!275 () Bool)

(declare-fun tb!85 () Bool)

(assert (=> (and start!2957 (= P!6 P!6) t!275) tb!85))

(declare-fun result!85 () Bool)

(assert (=> tb!85 (= result!85 true)))

(assert (=> b!16454 t!275))

(declare-fun b_and!109 () Bool)

(assert (= b_and!107 (and (=> t!275 result!85) b_and!109)))

(declare-fun b_lambda!6667 () Bool)

(assert (=> (not b_lambda!6667) (not b!16450)))

(declare-fun t!277 () Bool)

(declare-fun tb!87 () Bool)

(assert (=> (and start!2957 (= P!6 P!6) t!277) tb!87))

(declare-fun result!87 () Bool)

(assert (=> tb!87 (= result!87 true)))

(assert (=> b!16450 t!277))

(declare-fun b_and!111 () Bool)

(assert (= b_and!109 (and (=> t!277 result!87) b_and!111)))

(declare-fun b_lambda!6669 () Bool)

(assert (=> (not b_lambda!6669) (not b!16446)))

(declare-fun t!279 () Bool)

(declare-fun tb!89 () Bool)

(assert (=> (and start!2957 (= P!6 P!6) t!279) tb!89))

(declare-fun result!89 () Bool)

(assert (=> tb!89 (= result!89 true)))

(assert (=> b!16446 t!279))

(declare-fun b_and!113 () Bool)

(assert (= b_and!111 (and (=> t!279 result!89) b_and!113)))

(declare-fun b_lambda!6671 () Bool)

(assert (=> (not b_lambda!6671) (not b!16451)))

(declare-fun t!281 () Bool)

(declare-fun tb!91 () Bool)

(assert (=> (and start!2957 (= P!6 P!6) t!281) tb!91))

(declare-fun result!91 () Bool)

(assert (=> tb!91 (= result!91 true)))

(assert (=> b!16451 t!281))

(declare-fun b_and!115 () Bool)

(assert (= b_and!113 (and (=> t!281 result!91) b_and!115)))

(declare-fun m!24657 () Bool)

(assert (=> b!16453 m!24657))

(assert (=> b!16453 m!24657))

(declare-fun m!24659 () Bool)

(assert (=> b!16453 m!24659))

(declare-fun m!24661 () Bool)

(assert (=> b!16451 m!24661))

(assert (=> b!16451 m!24661))

(declare-fun m!24663 () Bool)

(assert (=> b!16451 m!24663))

(declare-fun m!24665 () Bool)

(assert (=> start!2957 m!24665))

(declare-fun m!24667 () Bool)

(assert (=> b!16446 m!24667))

(assert (=> b!16446 m!24667))

(declare-fun m!24669 () Bool)

(assert (=> b!16446 m!24669))

(declare-fun m!24671 () Bool)

(assert (=> b!16448 m!24671))

(assert (=> b!16448 m!24671))

(declare-fun m!24673 () Bool)

(assert (=> b!16448 m!24673))

(declare-fun m!24675 () Bool)

(assert (=> b!16447 m!24675))

(assert (=> b!16447 m!24675))

(declare-fun m!24677 () Bool)

(assert (=> b!16447 m!24677))

(declare-fun m!24679 () Bool)

(assert (=> b!16452 m!24679))

(assert (=> b!16452 m!24679))

(declare-fun m!24681 () Bool)

(assert (=> b!16452 m!24681))

(declare-fun m!24683 () Bool)

(assert (=> b!16450 m!24683))

(assert (=> b!16450 m!24683))

(declare-fun m!24685 () Bool)

(assert (=> b!16450 m!24685))

(declare-fun m!24687 () Bool)

(assert (=> b!16454 m!24687))

(assert (=> b!16454 m!24687))

(declare-fun m!24689 () Bool)

(assert (=> b!16454 m!24689))

(check-sat (not b_lambda!6657) (not b_next!23) (not b_lambda!6663) b_and!115 (not b_lambda!6665) (not b_lambda!6667) (not b_lambda!6659) (not start!2957) (not b_lambda!6669) (not b_lambda!6671) (not b_lambda!6661))
(check-sat b_and!115 (not b_next!23))
