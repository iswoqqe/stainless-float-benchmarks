; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2947 () Bool)

(assert start!2947)

(declare-fun b_free!13 () Bool)

(declare-fun b_next!13 () Bool)

(assert (=> start!2947 (= b_free!13 (not b_next!13))))

(declare-fun tp!20 () Bool)

(declare-fun b_and!39 () Bool)

(assert (=> start!2947 (= tp!20 b_and!39)))

(declare-fun b!16349 () Bool)

(declare-fun e!9081 () Bool)

(declare-datatypes ((array!1352 0))(
  ( (array!1353 (arr!593 (Array (_ BitVec 32) (_ BitVec 32))) (size!593 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1352)

(assert (=> b!16349 (= e!9081 (bvsge #b00000000000000000000000000000011 (size!593 a!13)))))

(declare-fun b!16348 () Bool)

(declare-fun res!12895 () Bool)

(assert (=> b!16348 (=> (not res!12895) (not e!9081))))

(declare-fun P!6 () Int)

(declare-fun dynLambda!45 (Int (_ BitVec 32)) Bool)

(assert (=> b!16348 (= res!12895 (dynLambda!45 P!6 (select (arr!593 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!16346 () Bool)

(declare-fun res!12897 () Bool)

(assert (=> b!16346 (=> (not res!12897) (not e!9081))))

(assert (=> b!16346 (= res!12897 (dynLambda!45 P!6 (select (arr!593 a!13) #b00000000000000000000000000000000)))))

(declare-fun res!12896 () Bool)

(assert (=> start!2947 (=> (not res!12896) (not e!9081))))

(assert (=> start!2947 (= res!12896 (= (size!593 a!13) #b00000000000000000000000000010100))))

(assert (=> start!2947 e!9081))

(declare-fun array_inv!541 (array!1352) Bool)

(assert (=> start!2947 (array_inv!541 a!13)))

(assert (=> start!2947 tp!20))

(declare-fun b!16347 () Bool)

(declare-fun res!12894 () Bool)

(assert (=> b!16347 (=> (not res!12894) (not e!9081))))

(assert (=> b!16347 (= res!12894 (dynLambda!45 P!6 (select (arr!593 a!13) #b00000000000000000000000000000001)))))

(assert (= (and start!2947 res!12896) b!16346))

(assert (= (and b!16346 res!12897) b!16347))

(assert (= (and b!16347 res!12894) b!16348))

(assert (= (and b!16348 res!12895) b!16349))

(declare-fun b_lambda!6607 () Bool)

(assert (=> (not b_lambda!6607) (not b!16348)))

(declare-fun t!217 () Bool)

(declare-fun tb!27 () Bool)

(assert (=> (and start!2947 (= P!6 P!6) t!217) tb!27))

(declare-fun result!27 () Bool)

(assert (=> tb!27 (= result!27 true)))

(assert (=> b!16348 t!217))

(declare-fun b_and!41 () Bool)

(assert (= b_and!39 (and (=> t!217 result!27) b_and!41)))

(declare-fun b_lambda!6609 () Bool)

(assert (=> (not b_lambda!6609) (not b!16346)))

(declare-fun t!219 () Bool)

(declare-fun tb!29 () Bool)

(assert (=> (and start!2947 (= P!6 P!6) t!219) tb!29))

(declare-fun result!29 () Bool)

(assert (=> tb!29 (= result!29 true)))

(assert (=> b!16346 t!219))

(declare-fun b_and!43 () Bool)

(assert (= b_and!41 (and (=> t!219 result!29) b_and!43)))

(declare-fun b_lambda!6611 () Bool)

(assert (=> (not b_lambda!6611) (not b!16347)))

(declare-fun t!221 () Bool)

(declare-fun tb!31 () Bool)

(assert (=> (and start!2947 (= P!6 P!6) t!221) tb!31))

(declare-fun result!31 () Bool)

(assert (=> tb!31 (= result!31 true)))

(assert (=> b!16347 t!221))

(declare-fun b_and!45 () Bool)

(assert (= b_and!43 (and (=> t!221 result!31) b_and!45)))

(declare-fun m!24547 () Bool)

(assert (=> b!16348 m!24547))

(assert (=> b!16348 m!24547))

(declare-fun m!24549 () Bool)

(assert (=> b!16348 m!24549))

(declare-fun m!24551 () Bool)

(assert (=> b!16346 m!24551))

(assert (=> b!16346 m!24551))

(declare-fun m!24553 () Bool)

(assert (=> b!16346 m!24553))

(declare-fun m!24555 () Bool)

(assert (=> start!2947 m!24555))

(declare-fun m!24557 () Bool)

(assert (=> b!16347 m!24557))

(assert (=> b!16347 m!24557))

(declare-fun m!24559 () Bool)

(assert (=> b!16347 m!24559))

(check-sat (not b_next!13) (not start!2947) b_and!45 (not b_lambda!6611) (not b_lambda!6607) (not b_lambda!6609))
(check-sat b_and!45 (not b_next!13))
