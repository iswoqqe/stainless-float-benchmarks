; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2961 () Bool)

(assert start!2961)

(declare-fun b_free!55 () Bool)

(declare-fun b_next!55 () Bool)

(assert (=> start!2961 (= b_free!55 (not b_next!55))))

(declare-fun tp!83 () Bool)

(declare-fun b_and!475 () Bool)

(assert (=> start!2961 (= tp!83 b_and!475)))

(declare-fun b!16539 () Bool)

(declare-fun res!13131 () Bool)

(declare-fun e!9124 () Bool)

(assert (=> b!16539 (=> (not res!13131) (not e!9124))))

(declare-fun P!5 () Int)

(declare-datatypes ((array!1395 0))(
  ( (array!1396 (arr!616 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!616 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1395)

(declare-fun dynLambda!65 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!16539 (= res!13131 (dynLambda!65 P!5 (select (arr!616 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!16540 () Bool)

(declare-fun res!13127 () Bool)

(assert (=> b!16540 (=> (not res!13127) (not e!9124))))

(assert (=> b!16540 (= res!13127 (dynLambda!65 P!5 (select (arr!616 a!12) #b00000000000000000000000000000010)))))

(declare-fun b!16541 () Bool)

(declare-fun res!13128 () Bool)

(assert (=> b!16541 (=> (not res!13128) (not e!9124))))

(assert (=> b!16541 (= res!13128 (dynLambda!65 P!5 (select (arr!616 a!12) #b00000000000000000000000000000001)))))

(declare-fun res!13130 () Bool)

(assert (=> start!2961 (=> (not res!13130) (not e!9124))))

(assert (=> start!2961 (= res!13130 (= (size!616 a!12) #b00000000000000000000000000010100))))

(assert (=> start!2961 e!9124))

(declare-fun array_inv!564 (array!1395) Bool)

(assert (=> start!2961 (array_inv!564 a!12)))

(assert (=> start!2961 tp!83))

(declare-fun b!16538 () Bool)

(declare-fun res!13129 () Bool)

(assert (=> b!16538 (=> (not res!13129) (not e!9124))))

(assert (=> b!16538 (= res!13129 (dynLambda!65 P!5 (select (arr!616 a!12) #b00000000000000000000000000000100)))))

(declare-fun b!16542 () Bool)

(declare-fun res!13126 () Bool)

(assert (=> b!16542 (=> (not res!13126) (not e!9124))))

(assert (=> b!16542 (= res!13126 (dynLambda!65 P!5 (select (arr!616 a!12) #b00000000000000000000000000000011)))))

(declare-fun b!16543 () Bool)

(assert (=> b!16543 (= e!9124 (bvsge #b00000000000000000000000000000101 (size!616 a!12)))))

(assert (= (and start!2961 res!13130) b!16539))

(assert (= (and b!16539 res!13131) b!16541))

(assert (= (and b!16541 res!13128) b!16540))

(assert (= (and b!16540 res!13127) b!16542))

(assert (= (and b!16542 res!13126) b!16538))

(assert (= (and b!16538 res!13129) b!16543))

(declare-fun b_lambda!5721 () Bool)

(assert (=> (not b_lambda!5721) (not b!16542)))

(declare-fun t!611 () Bool)

(declare-fun tb!421 () Bool)

(assert (=> (and start!2961 (= P!5 P!5) t!611) tb!421))

(declare-fun result!421 () Bool)

(assert (=> tb!421 (= result!421 true)))

(assert (=> b!16542 t!611))

(declare-fun b_and!477 () Bool)

(assert (= b_and!475 (and (=> t!611 result!421) b_and!477)))

(declare-fun b_lambda!5723 () Bool)

(assert (=> (not b_lambda!5723) (not b!16540)))

(declare-fun t!613 () Bool)

(declare-fun tb!423 () Bool)

(assert (=> (and start!2961 (= P!5 P!5) t!613) tb!423))

(declare-fun result!423 () Bool)

(assert (=> tb!423 (= result!423 true)))

(assert (=> b!16540 t!613))

(declare-fun b_and!479 () Bool)

(assert (= b_and!477 (and (=> t!613 result!423) b_and!479)))

(declare-fun b_lambda!5725 () Bool)

(assert (=> (not b_lambda!5725) (not b!16538)))

(declare-fun t!615 () Bool)

(declare-fun tb!425 () Bool)

(assert (=> (and start!2961 (= P!5 P!5) t!615) tb!425))

(declare-fun result!425 () Bool)

(assert (=> tb!425 (= result!425 true)))

(assert (=> b!16538 t!615))

(declare-fun b_and!481 () Bool)

(assert (= b_and!479 (and (=> t!615 result!425) b_and!481)))

(declare-fun b_lambda!5727 () Bool)

(assert (=> (not b_lambda!5727) (not b!16541)))

(declare-fun t!617 () Bool)

(declare-fun tb!427 () Bool)

(assert (=> (and start!2961 (= P!5 P!5) t!617) tb!427))

(declare-fun result!427 () Bool)

(assert (=> tb!427 (= result!427 true)))

(assert (=> b!16541 t!617))

(declare-fun b_and!483 () Bool)

(assert (= b_and!481 (and (=> t!617 result!427) b_and!483)))

(declare-fun b_lambda!5729 () Bool)

(assert (=> (not b_lambda!5729) (not b!16539)))

(declare-fun t!619 () Bool)

(declare-fun tb!429 () Bool)

(assert (=> (and start!2961 (= P!5 P!5) t!619) tb!429))

(declare-fun result!429 () Bool)

(assert (=> tb!429 (= result!429 true)))

(assert (=> b!16539 t!619))

(declare-fun b_and!485 () Bool)

(assert (= b_and!483 (and (=> t!619 result!429) b_and!485)))

(declare-fun m!23047 () Bool)

(assert (=> start!2961 m!23047))

(declare-fun m!23049 () Bool)

(assert (=> b!16540 m!23049))

(assert (=> b!16540 m!23049))

(declare-fun m!23051 () Bool)

(assert (=> b!16540 m!23051))

(declare-fun m!23053 () Bool)

(assert (=> b!16541 m!23053))

(assert (=> b!16541 m!23053))

(declare-fun m!23055 () Bool)

(assert (=> b!16541 m!23055))

(declare-fun m!23057 () Bool)

(assert (=> b!16538 m!23057))

(assert (=> b!16538 m!23057))

(declare-fun m!23059 () Bool)

(assert (=> b!16538 m!23059))

(declare-fun m!23061 () Bool)

(assert (=> b!16539 m!23061))

(assert (=> b!16539 m!23061))

(declare-fun m!23063 () Bool)

(assert (=> b!16539 m!23063))

(declare-fun m!23065 () Bool)

(assert (=> b!16542 m!23065))

(assert (=> b!16542 m!23065))

(declare-fun m!23067 () Bool)

(assert (=> b!16542 m!23067))

(check-sat (not b_lambda!5723) (not b_lambda!5729) (not b_lambda!5725) (not b_lambda!5727) (not b_next!55) (not b_lambda!5721) (not start!2961) b_and!485)
(check-sat b_and!485 (not b_next!55))
