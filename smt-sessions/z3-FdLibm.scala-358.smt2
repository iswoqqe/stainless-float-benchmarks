; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2043 () Bool)

(assert start!2043)

(declare-fun b_free!3 () Bool)

(declare-fun b_next!3 () Bool)

(assert (=> start!2043 (= b_free!3 (not b_next!3))))

(declare-fun tp!5 () Bool)

(declare-fun b_and!5 () Bool)

(assert (=> start!2043 (= tp!5 b_and!5)))

(declare-fun res!8450 () Bool)

(declare-fun e!5933 () Bool)

(assert (=> start!2043 (=> (not res!8450) (not e!5933))))

(declare-datatypes ((array!750 0))(
  ( (array!751 (arr!330 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!330 (_ BitVec 32))) )
))
(declare-fun a!11 () array!750)

(assert (=> start!2043 (= res!8450 (= (size!330 a!11) #b00000000000000000000000000000101))))

(assert (=> start!2043 e!5933))

(declare-fun array_inv!279 (array!750) Bool)

(assert (=> start!2043 (array_inv!279 a!11)))

(assert (=> start!2043 tp!5))

(declare-fun b!10490 () Bool)

(declare-fun res!8451 () Bool)

(assert (=> b!10490 (=> (not res!8451) (not e!5933))))

(declare-fun P!4 () Int)

(declare-fun dynLambda!26 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!10490 (= res!8451 (dynLambda!26 P!4 (select (arr!330 a!11) #b00000000000000000000000000000000)))))

(declare-fun b!10491 () Bool)

(declare-fun res!8449 () Bool)

(assert (=> b!10491 (=> (not res!8449) (not e!5933))))

(assert (=> b!10491 (= res!8449 (dynLambda!26 P!4 (select (arr!330 a!11) #b00000000000000000000000000000001)))))

(declare-fun b!10492 () Bool)

(assert (=> b!10492 (= e!5933 (bvsge #b00000000000000000000000000000010 (size!330 a!11)))))

(assert (= (and start!2043 res!8450) b!10490))

(assert (= (and b!10490 res!8451) b!10491))

(assert (= (and b!10491 res!8449) b!10492))

(declare-fun b_lambda!4663 () Bool)

(assert (=> (not b_lambda!4663) (not b!10490)))

(declare-fun t!193 () Bool)

(declare-fun tb!3 () Bool)

(assert (=> (and start!2043 (= P!4 P!4) t!193) tb!3))

(declare-fun result!3 () Bool)

(assert (=> tb!3 (= result!3 true)))

(assert (=> b!10490 t!193))

(declare-fun b_and!7 () Bool)

(assert (= b_and!5 (and (=> t!193 result!3) b_and!7)))

(declare-fun b_lambda!4665 () Bool)

(assert (=> (not b_lambda!4665) (not b!10491)))

(declare-fun t!195 () Bool)

(declare-fun tb!5 () Bool)

(assert (=> (and start!2043 (= P!4 P!4) t!195) tb!5))

(declare-fun result!5 () Bool)

(assert (=> tb!5 (= result!5 true)))

(assert (=> b!10491 t!195))

(declare-fun b_and!9 () Bool)

(assert (= b_and!7 (and (=> t!195 result!5) b_and!9)))

(declare-fun m!16259 () Bool)

(assert (=> start!2043 m!16259))

(declare-fun m!16261 () Bool)

(assert (=> b!10490 m!16261))

(assert (=> b!10490 m!16261))

(declare-fun m!16263 () Bool)

(assert (=> b!10490 m!16263))

(declare-fun m!16265 () Bool)

(assert (=> b!10491 m!16265))

(assert (=> b!10491 m!16265))

(declare-fun m!16267 () Bool)

(assert (=> b!10491 m!16267))

(check-sat (not b_lambda!4665) b_and!9 (not b_next!3) (not start!2043) (not b_lambda!4663))
(check-sat b_and!9 (not b_next!3))
