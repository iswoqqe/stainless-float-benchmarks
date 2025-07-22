; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2959 () Bool)

(assert start!2959)

(declare-fun b_free!53 () Bool)

(declare-fun b_next!53 () Bool)

(assert (=> start!2959 (= b_free!53 (not b_next!53))))

(declare-fun tp!80 () Bool)

(declare-fun b_and!465 () Bool)

(assert (=> start!2959 (= tp!80 b_and!465)))

(declare-fun b!16521 () Bool)

(declare-fun res!13110 () Bool)

(declare-fun e!9118 () Bool)

(assert (=> b!16521 (=> (not res!13110) (not e!9118))))

(declare-fun P!5 () Int)

(declare-datatypes ((array!1393 0))(
  ( (array!1394 (arr!615 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!615 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1393)

(declare-fun dynLambda!64 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!16521 (= res!13110 (dynLambda!64 P!5 (select (arr!615 a!12) #b00000000000000000000000000000011)))))

(declare-fun b!16522 () Bool)

(declare-fun res!13111 () Bool)

(assert (=> b!16522 (=> (not res!13111) (not e!9118))))

(assert (=> b!16522 (= res!13111 (dynLambda!64 P!5 (select (arr!615 a!12) #b00000000000000000000000000000001)))))

(declare-fun b!16523 () Bool)

(declare-fun res!13109 () Bool)

(assert (=> b!16523 (=> (not res!13109) (not e!9118))))

(assert (=> b!16523 (= res!13109 (dynLambda!64 P!5 (select (arr!615 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!16524 () Bool)

(declare-fun res!13112 () Bool)

(assert (=> b!16524 (=> (not res!13112) (not e!9118))))

(assert (=> b!16524 (= res!13112 (dynLambda!64 P!5 (select (arr!615 a!12) #b00000000000000000000000000000010)))))

(declare-fun b!16525 () Bool)

(assert (=> b!16525 (= e!9118 (bvsge #b00000000000000000000000000000100 (size!615 a!12)))))

(declare-fun res!13113 () Bool)

(assert (=> start!2959 (=> (not res!13113) (not e!9118))))

(assert (=> start!2959 (= res!13113 (= (size!615 a!12) #b00000000000000000000000000010100))))

(assert (=> start!2959 e!9118))

(declare-fun array_inv!563 (array!1393) Bool)

(assert (=> start!2959 (array_inv!563 a!12)))

(assert (=> start!2959 tp!80))

(assert (= (and start!2959 res!13113) b!16523))

(assert (= (and b!16523 res!13109) b!16522))

(assert (= (and b!16522 res!13111) b!16524))

(assert (= (and b!16524 res!13112) b!16521))

(assert (= (and b!16521 res!13110) b!16525))

(declare-fun b_lambda!5713 () Bool)

(assert (=> (not b_lambda!5713) (not b!16521)))

(declare-fun t!603 () Bool)

(declare-fun tb!413 () Bool)

(assert (=> (and start!2959 (= P!5 P!5) t!603) tb!413))

(declare-fun result!413 () Bool)

(assert (=> tb!413 (= result!413 true)))

(assert (=> b!16521 t!603))

(declare-fun b_and!467 () Bool)

(assert (= b_and!465 (and (=> t!603 result!413) b_and!467)))

(declare-fun b_lambda!5715 () Bool)

(assert (=> (not b_lambda!5715) (not b!16522)))

(declare-fun t!605 () Bool)

(declare-fun tb!415 () Bool)

(assert (=> (and start!2959 (= P!5 P!5) t!605) tb!415))

(declare-fun result!415 () Bool)

(assert (=> tb!415 (= result!415 true)))

(assert (=> b!16522 t!605))

(declare-fun b_and!469 () Bool)

(assert (= b_and!467 (and (=> t!605 result!415) b_and!469)))

(declare-fun b_lambda!5717 () Bool)

(assert (=> (not b_lambda!5717) (not b!16523)))

(declare-fun t!607 () Bool)

(declare-fun tb!417 () Bool)

(assert (=> (and start!2959 (= P!5 P!5) t!607) tb!417))

(declare-fun result!417 () Bool)

(assert (=> tb!417 (= result!417 true)))

(assert (=> b!16523 t!607))

(declare-fun b_and!471 () Bool)

(assert (= b_and!469 (and (=> t!607 result!417) b_and!471)))

(declare-fun b_lambda!5719 () Bool)

(assert (=> (not b_lambda!5719) (not b!16524)))

(declare-fun t!609 () Bool)

(declare-fun tb!419 () Bool)

(assert (=> (and start!2959 (= P!5 P!5) t!609) tb!419))

(declare-fun result!419 () Bool)

(assert (=> tb!419 (= result!419 true)))

(assert (=> b!16524 t!609))

(declare-fun b_and!473 () Bool)

(assert (= b_and!471 (and (=> t!609 result!419) b_and!473)))

(declare-fun m!23029 () Bool)

(assert (=> b!16524 m!23029))

(assert (=> b!16524 m!23029))

(declare-fun m!23031 () Bool)

(assert (=> b!16524 m!23031))

(declare-fun m!23033 () Bool)

(assert (=> b!16522 m!23033))

(assert (=> b!16522 m!23033))

(declare-fun m!23035 () Bool)

(assert (=> b!16522 m!23035))

(declare-fun m!23037 () Bool)

(assert (=> start!2959 m!23037))

(declare-fun m!23039 () Bool)

(assert (=> b!16523 m!23039))

(assert (=> b!16523 m!23039))

(declare-fun m!23041 () Bool)

(assert (=> b!16523 m!23041))

(declare-fun m!23043 () Bool)

(assert (=> b!16521 m!23043))

(assert (=> b!16521 m!23043))

(declare-fun m!23045 () Bool)

(assert (=> b!16521 m!23045))

(check-sat (not b_next!53) (not b_lambda!5715) (not b_lambda!5713) (not b_lambda!5717) (not start!2959) (not b_lambda!5719) b_and!473)
(check-sat b_and!473 (not b_next!53))
