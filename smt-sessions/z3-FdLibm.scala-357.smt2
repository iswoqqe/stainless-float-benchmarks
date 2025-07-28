; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2041 () Bool)

(assert start!2041)

(declare-fun b_free!1 () Bool)

(declare-fun b_next!1 () Bool)

(assert (=> start!2041 (= b_free!1 (not b_next!1))))

(declare-fun tp!2 () Bool)

(declare-fun b_and!1 () Bool)

(assert (=> start!2041 (= tp!2 b_and!1)))

(declare-fun res!8441 () Bool)

(declare-fun e!5928 () Bool)

(assert (=> start!2041 (=> (not res!8441) (not e!5928))))

(declare-datatypes ((array!748 0))(
  ( (array!749 (arr!329 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!329 (_ BitVec 32))) )
))
(declare-fun a!11 () array!748)

(assert (=> start!2041 (= res!8441 (= (size!329 a!11) #b00000000000000000000000000000101))))

(assert (=> start!2041 e!5928))

(declare-fun array_inv!278 (array!748) Bool)

(assert (=> start!2041 (array_inv!278 a!11)))

(assert (=> start!2041 tp!2))

(declare-fun b!10482 () Bool)

(declare-fun res!8442 () Bool)

(assert (=> b!10482 (=> (not res!8442) (not e!5928))))

(declare-fun P!4 () Int)

(declare-fun dynLambda!25 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!10482 (= res!8442 (dynLambda!25 P!4 (select (arr!329 a!11) #b00000000000000000000000000000000)))))

(declare-fun b!10483 () Bool)

(assert (=> b!10483 (= e!5928 (bvsge #b00000000000000000000000000000001 (size!329 a!11)))))

(assert (= (and start!2041 res!8441) b!10482))

(assert (= (and b!10482 res!8442) b!10483))

(declare-fun b_lambda!4661 () Bool)

(assert (=> (not b_lambda!4661) (not b!10482)))

(declare-fun t!191 () Bool)

(declare-fun tb!1 () Bool)

(assert (=> (and start!2041 (= P!4 P!4) t!191) tb!1))

(declare-fun result!1 () Bool)

(assert (=> tb!1 (= result!1 true)))

(assert (=> b!10482 t!191))

(declare-fun b_and!3 () Bool)

(assert (= b_and!1 (and (=> t!191 result!1) b_and!3)))

(declare-fun m!16253 () Bool)

(assert (=> start!2041 m!16253))

(declare-fun m!16255 () Bool)

(assert (=> b!10482 m!16255))

(assert (=> b!10482 m!16255))

(declare-fun m!16257 () Bool)

(assert (=> b!10482 m!16257))

(check-sat (not start!2041) (not b_lambda!4661) b_and!3 (not b_next!1))
(check-sat b_and!3 (not b_next!1))
