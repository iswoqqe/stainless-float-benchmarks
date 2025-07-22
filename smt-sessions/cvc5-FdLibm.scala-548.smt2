; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3101 () Bool)

(assert start!3101)

(declare-fun b_free!13 () Bool)

(declare-fun b_next!13 () Bool)

(assert (=> start!3101 (= b_free!13 (not b_next!13))))

(declare-fun tp!20 () Bool)

(declare-fun b_and!39 () Bool)

(assert (=> start!3101 (= tp!20 b_and!39)))

(declare-fun b!17218 () Bool)

(declare-fun res!13645 () Bool)

(declare-fun e!9334 () Bool)

(assert (=> b!17218 (=> (not res!13645) (not e!9334))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1362 0))(
  ( (array!1363 (arr!593 (Array (_ BitVec 32) (_ BitVec 32))) (size!593 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1362)

(declare-fun dynLambda!49 (Int (_ BitVec 32)) Bool)

(assert (=> b!17218 (= res!13645 (dynLambda!49 P!6 (select (arr!593 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!17219 () Bool)

(assert (=> b!17219 (= e!9334 (bvsge #b00000000000000000000000000000011 (size!593 a!13)))))

(declare-fun b!17217 () Bool)

(declare-fun res!13646 () Bool)

(assert (=> b!17217 (=> (not res!13646) (not e!9334))))

(assert (=> b!17217 (= res!13646 (dynLambda!49 P!6 (select (arr!593 a!13) #b00000000000000000000000000000001)))))

(declare-fun res!13647 () Bool)

(assert (=> start!3101 (=> (not res!13647) (not e!9334))))

(assert (=> start!3101 (= res!13647 (= (size!593 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3101 e!9334))

(declare-fun array_inv!541 (array!1362) Bool)

(assert (=> start!3101 (array_inv!541 a!13)))

(assert (=> start!3101 tp!20))

(declare-fun b!17216 () Bool)

(declare-fun res!13644 () Bool)

(assert (=> b!17216 (=> (not res!13644) (not e!9334))))

(assert (=> b!17216 (= res!13644 (dynLambda!49 P!6 (select (arr!593 a!13) #b00000000000000000000000000000000)))))

(assert (= (and start!3101 res!13647) b!17216))

(assert (= (and b!17216 res!13644) b!17217))

(assert (= (and b!17217 res!13646) b!17218))

(assert (= (and b!17218 res!13645) b!17219))

(declare-fun b_lambda!7967 () Bool)

(assert (=> (not b_lambda!7967) (not b!17218)))

(declare-fun t!217 () Bool)

(declare-fun tb!27 () Bool)

(assert (=> (and start!3101 (= P!6 P!6) t!217) tb!27))

(declare-fun result!27 () Bool)

(assert (=> tb!27 (= result!27 true)))

(assert (=> b!17218 t!217))

(declare-fun b_and!41 () Bool)

(assert (= b_and!39 (and (=> t!217 result!27) b_and!41)))

(declare-fun b_lambda!7969 () Bool)

(assert (=> (not b_lambda!7969) (not b!17217)))

(declare-fun t!219 () Bool)

(declare-fun tb!29 () Bool)

(assert (=> (and start!3101 (= P!6 P!6) t!219) tb!29))

(declare-fun result!29 () Bool)

(assert (=> tb!29 (= result!29 true)))

(assert (=> b!17217 t!219))

(declare-fun b_and!43 () Bool)

(assert (= b_and!41 (and (=> t!219 result!29) b_and!43)))

(declare-fun b_lambda!7971 () Bool)

(assert (=> (not b_lambda!7971) (not b!17216)))

(declare-fun t!221 () Bool)

(declare-fun tb!31 () Bool)

(assert (=> (and start!3101 (= P!6 P!6) t!221) tb!31))

(declare-fun result!31 () Bool)

(assert (=> tb!31 (= result!31 true)))

(assert (=> b!17216 t!221))

(declare-fun b_and!45 () Bool)

(assert (= b_and!43 (and (=> t!221 result!31) b_and!45)))

(declare-fun m!27391 () Bool)

(assert (=> b!17218 m!27391))

(assert (=> b!17218 m!27391))

(declare-fun m!27393 () Bool)

(assert (=> b!17218 m!27393))

(declare-fun m!27395 () Bool)

(assert (=> b!17217 m!27395))

(assert (=> b!17217 m!27395))

(declare-fun m!27397 () Bool)

(assert (=> b!17217 m!27397))

(declare-fun m!27399 () Bool)

(assert (=> start!3101 m!27399))

(declare-fun m!27401 () Bool)

(assert (=> b!17216 m!27401))

(assert (=> b!17216 m!27401))

(declare-fun m!27403 () Bool)

(assert (=> b!17216 m!27403))

(push 1)

(assert b_and!45)

(assert (not b_lambda!7967))

(assert (not start!3101))

(assert (not b_lambda!7971))

(assert (not b_lambda!7969))

(assert (not b_next!13))

(check-sat)

(pop 1)

(push 1)

(assert b_and!45)

(assert (not b_next!13))

(check-sat)

(pop 1)

