; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3107 () Bool)

(assert start!3107)

(declare-fun b_free!19 () Bool)

(declare-fun b_next!19 () Bool)

(assert (=> start!3107 (= b_free!19 (not b_next!19))))

(declare-fun tp!29 () Bool)

(declare-fun b_and!69 () Bool)

(assert (=> start!3107 (= tp!29 b_and!69)))

(declare-fun b!17267 () Bool)

(declare-fun res!13700 () Bool)

(declare-fun e!9352 () Bool)

(assert (=> b!17267 (=> (not res!13700) (not e!9352))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1368 0))(
  ( (array!1369 (arr!596 (Array (_ BitVec 32) (_ BitVec 32))) (size!596 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1368)

(declare-fun dynLambda!52 (Int (_ BitVec 32)) Bool)

(assert (=> b!17267 (= res!13700 (dynLambda!52 P!6 (select (arr!596 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!17268 () Bool)

(declare-fun res!13698 () Bool)

(assert (=> b!17268 (=> (not res!13698) (not e!9352))))

(assert (=> b!17268 (= res!13698 (dynLambda!52 P!6 (select (arr!596 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!17269 () Bool)

(declare-fun res!13701 () Bool)

(assert (=> b!17269 (=> (not res!13701) (not e!9352))))

(assert (=> b!17269 (= res!13701 (dynLambda!52 P!6 (select (arr!596 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!17270 () Bool)

(declare-fun res!13697 () Bool)

(assert (=> b!17270 (=> (not res!13697) (not e!9352))))

(assert (=> b!17270 (= res!13697 (dynLambda!52 P!6 (select (arr!596 a!13) #b00000000000000000000000000000011)))))

(declare-fun res!13696 () Bool)

(assert (=> start!3107 (=> (not res!13696) (not e!9352))))

(assert (=> start!3107 (= res!13696 (= (size!596 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3107 e!9352))

(declare-fun array_inv!544 (array!1368) Bool)

(assert (=> start!3107 (array_inv!544 a!13)))

(assert (=> start!3107 tp!29))

(declare-fun b!17271 () Bool)

(declare-fun res!13699 () Bool)

(assert (=> b!17271 (=> (not res!13699) (not e!9352))))

(assert (=> b!17271 (= res!13699 (dynLambda!52 P!6 (select (arr!596 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17272 () Bool)

(declare-fun res!13695 () Bool)

(assert (=> b!17272 (=> (not res!13695) (not e!9352))))

(assert (=> b!17272 (= res!13695 (dynLambda!52 P!6 (select (arr!596 a!13) #b00000000000000000000000000000000)))))

(declare-fun b!17273 () Bool)

(assert (=> b!17273 (= e!9352 (bvsge #b00000000000000000000000000000110 (size!596 a!13)))))

(assert (= (and start!3107 res!13696) b!17272))

(assert (= (and b!17272 res!13695) b!17271))

(assert (= (and b!17271 res!13699) b!17267))

(assert (= (and b!17267 res!13700) b!17270))

(assert (= (and b!17270 res!13697) b!17269))

(assert (= (and b!17269 res!13701) b!17268))

(assert (= (and b!17268 res!13698) b!17273))

(declare-fun b_lambda!7991 () Bool)

(assert (=> (not b_lambda!7991) (not b!17272)))

(declare-fun t!241 () Bool)

(declare-fun tb!51 () Bool)

(assert (=> (and start!3107 (= P!6 P!6) t!241) tb!51))

(declare-fun result!51 () Bool)

(assert (=> tb!51 (= result!51 true)))

(assert (=> b!17272 t!241))

(declare-fun b_and!71 () Bool)

(assert (= b_and!69 (and (=> t!241 result!51) b_and!71)))

(declare-fun b_lambda!7993 () Bool)

(assert (=> (not b_lambda!7993) (not b!17271)))

(declare-fun t!243 () Bool)

(declare-fun tb!53 () Bool)

(assert (=> (and start!3107 (= P!6 P!6) t!243) tb!53))

(declare-fun result!53 () Bool)

(assert (=> tb!53 (= result!53 true)))

(assert (=> b!17271 t!243))

(declare-fun b_and!73 () Bool)

(assert (= b_and!71 (and (=> t!243 result!53) b_and!73)))

(declare-fun b_lambda!7995 () Bool)

(assert (=> (not b_lambda!7995) (not b!17267)))

(declare-fun t!245 () Bool)

(declare-fun tb!55 () Bool)

(assert (=> (and start!3107 (= P!6 P!6) t!245) tb!55))

(declare-fun result!55 () Bool)

(assert (=> tb!55 (= result!55 true)))

(assert (=> b!17267 t!245))

(declare-fun b_and!75 () Bool)

(assert (= b_and!73 (and (=> t!245 result!55) b_and!75)))

(declare-fun b_lambda!7997 () Bool)

(assert (=> (not b_lambda!7997) (not b!17270)))

(declare-fun t!247 () Bool)

(declare-fun tb!57 () Bool)

(assert (=> (and start!3107 (= P!6 P!6) t!247) tb!57))

(declare-fun result!57 () Bool)

(assert (=> tb!57 (= result!57 true)))

(assert (=> b!17270 t!247))

(declare-fun b_and!77 () Bool)

(assert (= b_and!75 (and (=> t!247 result!57) b_and!77)))

(declare-fun b_lambda!7999 () Bool)

(assert (=> (not b_lambda!7999) (not b!17269)))

(declare-fun t!249 () Bool)

(declare-fun tb!59 () Bool)

(assert (=> (and start!3107 (= P!6 P!6) t!249) tb!59))

(declare-fun result!59 () Bool)

(assert (=> tb!59 (= result!59 true)))

(assert (=> b!17269 t!249))

(declare-fun b_and!79 () Bool)

(assert (= b_and!77 (and (=> t!249 result!59) b_and!79)))

(declare-fun b_lambda!8001 () Bool)

(assert (=> (not b_lambda!8001) (not b!17268)))

(declare-fun t!251 () Bool)

(declare-fun tb!61 () Bool)

(assert (=> (and start!3107 (= P!6 P!6) t!251) tb!61))

(declare-fun result!61 () Bool)

(assert (=> tb!61 (= result!61 true)))

(assert (=> b!17268 t!251))

(declare-fun b_and!81 () Bool)

(assert (= b_and!79 (and (=> t!251 result!61) b_and!81)))

(declare-fun m!27445 () Bool)

(assert (=> b!17271 m!27445))

(assert (=> b!17271 m!27445))

(declare-fun m!27447 () Bool)

(assert (=> b!17271 m!27447))

(declare-fun m!27449 () Bool)

(assert (=> b!17272 m!27449))

(assert (=> b!17272 m!27449))

(declare-fun m!27451 () Bool)

(assert (=> b!17272 m!27451))

(declare-fun m!27453 () Bool)

(assert (=> b!17268 m!27453))

(assert (=> b!17268 m!27453))

(declare-fun m!27455 () Bool)

(assert (=> b!17268 m!27455))

(declare-fun m!27457 () Bool)

(assert (=> b!17267 m!27457))

(assert (=> b!17267 m!27457))

(declare-fun m!27459 () Bool)

(assert (=> b!17267 m!27459))

(declare-fun m!27461 () Bool)

(assert (=> b!17269 m!27461))

(assert (=> b!17269 m!27461))

(declare-fun m!27463 () Bool)

(assert (=> b!17269 m!27463))

(declare-fun m!27465 () Bool)

(assert (=> start!3107 m!27465))

(declare-fun m!27467 () Bool)

(assert (=> b!17270 m!27467))

(assert (=> b!17270 m!27467))

(declare-fun m!27469 () Bool)

(assert (=> b!17270 m!27469))

(push 1)

(assert (not b_lambda!7999))

(assert (not b_lambda!8001))

(assert (not b_lambda!7997))

(assert (not b_lambda!7995))

(assert (not start!3107))

(assert (not b_lambda!7991))

(assert (not b_next!19))

(assert (not b_lambda!7993))

(assert b_and!81)

(check-sat)

(pop 1)

(push 1)

(assert b_and!81)

(assert (not b_next!19))

(check-sat)

(pop 1)

