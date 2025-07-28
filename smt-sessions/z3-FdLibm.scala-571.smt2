; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2993 () Bool)

(assert start!2993)

(declare-fun b_free!55 () Bool)

(declare-fun b_next!55 () Bool)

(assert (=> start!2993 (= b_free!55 (not b_next!55))))

(declare-fun tp!83 () Bool)

(declare-fun b_and!475 () Bool)

(assert (=> start!2993 (= tp!83 b_and!475)))

(declare-fun b!17004 () Bool)

(declare-fun e!9212 () Bool)

(declare-datatypes ((array!1398 0))(
  ( (array!1399 (arr!616 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!616 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1398)

(assert (=> b!17004 (= e!9212 (bvsge #b00000000000000000000000000000101 (size!616 a!12)))))

(declare-fun b!17005 () Bool)

(declare-fun res!13556 () Bool)

(assert (=> b!17005 (=> (not res!13556) (not e!9212))))

(declare-fun P!5 () Int)

(declare-fun dynLambda!66 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!17005 (= res!13556 (dynLambda!66 P!5 (select (arr!616 a!12) #b00000000000000000000000000000011)))))

(declare-fun res!13553 () Bool)

(assert (=> start!2993 (=> (not res!13553) (not e!9212))))

(assert (=> start!2993 (= res!13553 (= (size!616 a!12) #b00000000000000000000000000010100))))

(assert (=> start!2993 e!9212))

(declare-fun array_inv!564 (array!1398) Bool)

(assert (=> start!2993 (array_inv!564 a!12)))

(assert (=> start!2993 tp!83))

(declare-fun b!17006 () Bool)

(declare-fun res!13554 () Bool)

(assert (=> b!17006 (=> (not res!13554) (not e!9212))))

(assert (=> b!17006 (= res!13554 (dynLambda!66 P!5 (select (arr!616 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!17007 () Bool)

(declare-fun res!13555 () Bool)

(assert (=> b!17007 (=> (not res!13555) (not e!9212))))

(assert (=> b!17007 (= res!13555 (dynLambda!66 P!5 (select (arr!616 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!17008 () Bool)

(declare-fun res!13557 () Bool)

(assert (=> b!17008 (=> (not res!13557) (not e!9212))))

(assert (=> b!17008 (= res!13557 (dynLambda!66 P!5 (select (arr!616 a!12) #b00000000000000000000000000000010)))))

(declare-fun b!17009 () Bool)

(declare-fun res!13552 () Bool)

(assert (=> b!17009 (=> (not res!13552) (not e!9212))))

(assert (=> b!17009 (= res!13552 (dynLambda!66 P!5 (select (arr!616 a!12) #b00000000000000000000000000000100)))))

(assert (= (and start!2993 res!13553) b!17007))

(assert (= (and b!17007 res!13555) b!17006))

(assert (= (and b!17006 res!13554) b!17008))

(assert (= (and b!17008 res!13557) b!17005))

(assert (= (and b!17005 res!13556) b!17009))

(assert (= (and b!17009 res!13552) b!17004))

(declare-fun b_lambda!7001 () Bool)

(assert (=> (not b_lambda!7001) (not b!17006)))

(declare-fun t!611 () Bool)

(declare-fun tb!421 () Bool)

(assert (=> (and start!2993 (= P!5 P!5) t!611) tb!421))

(declare-fun result!421 () Bool)

(assert (=> tb!421 (= result!421 true)))

(assert (=> b!17006 t!611))

(declare-fun b_and!477 () Bool)

(assert (= b_and!475 (and (=> t!611 result!421) b_and!477)))

(declare-fun b_lambda!7003 () Bool)

(assert (=> (not b_lambda!7003) (not b!17008)))

(declare-fun t!613 () Bool)

(declare-fun tb!423 () Bool)

(assert (=> (and start!2993 (= P!5 P!5) t!613) tb!423))

(declare-fun result!423 () Bool)

(assert (=> tb!423 (= result!423 true)))

(assert (=> b!17008 t!613))

(declare-fun b_and!479 () Bool)

(assert (= b_and!477 (and (=> t!613 result!423) b_and!479)))

(declare-fun b_lambda!7005 () Bool)

(assert (=> (not b_lambda!7005) (not b!17005)))

(declare-fun t!615 () Bool)

(declare-fun tb!425 () Bool)

(assert (=> (and start!2993 (= P!5 P!5) t!615) tb!425))

(declare-fun result!425 () Bool)

(assert (=> tb!425 (= result!425 true)))

(assert (=> b!17005 t!615))

(declare-fun b_and!481 () Bool)

(assert (= b_and!479 (and (=> t!615 result!425) b_and!481)))

(declare-fun b_lambda!7007 () Bool)

(assert (=> (not b_lambda!7007) (not b!17007)))

(declare-fun t!617 () Bool)

(declare-fun tb!427 () Bool)

(assert (=> (and start!2993 (= P!5 P!5) t!617) tb!427))

(declare-fun result!427 () Bool)

(assert (=> tb!427 (= result!427 true)))

(assert (=> b!17007 t!617))

(declare-fun b_and!483 () Bool)

(assert (= b_and!481 (and (=> t!617 result!427) b_and!483)))

(declare-fun b_lambda!7009 () Bool)

(assert (=> (not b_lambda!7009) (not b!17009)))

(declare-fun t!619 () Bool)

(declare-fun tb!429 () Bool)

(assert (=> (and start!2993 (= P!5 P!5) t!619) tb!429))

(declare-fun result!429 () Bool)

(assert (=> tb!429 (= result!429 true)))

(assert (=> b!17009 t!619))

(declare-fun b_and!485 () Bool)

(assert (= b_and!483 (and (=> t!619 result!429) b_and!485)))

(declare-fun m!25381 () Bool)

(assert (=> b!17007 m!25381))

(assert (=> b!17007 m!25381))

(declare-fun m!25383 () Bool)

(assert (=> b!17007 m!25383))

(declare-fun m!25385 () Bool)

(assert (=> b!17009 m!25385))

(assert (=> b!17009 m!25385))

(declare-fun m!25387 () Bool)

(assert (=> b!17009 m!25387))

(declare-fun m!25389 () Bool)

(assert (=> b!17006 m!25389))

(assert (=> b!17006 m!25389))

(declare-fun m!25391 () Bool)

(assert (=> b!17006 m!25391))

(declare-fun m!25393 () Bool)

(assert (=> b!17008 m!25393))

(assert (=> b!17008 m!25393))

(declare-fun m!25395 () Bool)

(assert (=> b!17008 m!25395))

(declare-fun m!25397 () Bool)

(assert (=> start!2993 m!25397))

(declare-fun m!25399 () Bool)

(assert (=> b!17005 m!25399))

(assert (=> b!17005 m!25399))

(declare-fun m!25401 () Bool)

(assert (=> b!17005 m!25401))

(check-sat (not b_lambda!7003) (not b_lambda!7005) (not b_lambda!7001) b_and!485 (not b_lambda!7007) (not b_next!55) (not b_lambda!7009) (not start!2993))
(check-sat b_and!485 (not b_next!55))
