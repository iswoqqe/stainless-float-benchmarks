; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2017 () Bool)

(assert start!2017)

(declare-fun b_free!3 () Bool)

(declare-fun b_next!3 () Bool)

(assert (=> start!2017 (= b_free!3 (not b_next!3))))

(declare-fun tp!5 () Bool)

(declare-fun b_and!5 () Bool)

(assert (=> start!2017 (= tp!5 b_and!5)))

(declare-fun res!8111 () Bool)

(declare-fun e!5863 () Bool)

(assert (=> start!2017 (=> (not res!8111) (not e!5863))))

(declare-datatypes ((array!747 0))(
  ( (array!748 (arr!330 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!330 (_ BitVec 32))) )
))
(declare-fun a!11 () array!747)

(assert (=> start!2017 (= res!8111 (= (size!330 a!11) #b00000000000000000000000000000101))))

(assert (=> start!2017 e!5863))

(declare-fun array_inv!279 (array!747) Bool)

(assert (=> start!2017 (array_inv!279 a!11)))

(assert (=> start!2017 tp!5))

(declare-fun b!10122 () Bool)

(declare-fun res!8113 () Bool)

(assert (=> b!10122 (=> (not res!8113) (not e!5863))))

(declare-fun P!4 () Int)

(declare-fun dynLambda!25 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!10122 (= res!8113 (dynLambda!25 P!4 (select (arr!330 a!11) #b00000000000000000000000000000000)))))

(declare-fun b!10123 () Bool)

(declare-fun res!8112 () Bool)

(assert (=> b!10123 (=> (not res!8112) (not e!5863))))

(assert (=> b!10123 (= res!8112 (dynLambda!25 P!4 (select (arr!330 a!11) #b00000000000000000000000000000001)))))

(declare-fun b!10124 () Bool)

(assert (=> b!10124 (= e!5863 (bvsge #b00000000000000000000000000000010 (size!330 a!11)))))

(assert (= (and start!2017 res!8111) b!10122))

(assert (= (and b!10122 res!8113) b!10123))

(assert (= (and b!10123 res!8112) b!10124))

(declare-fun b_lambda!3703 () Bool)

(assert (=> (not b_lambda!3703) (not b!10122)))

(declare-fun t!193 () Bool)

(declare-fun tb!3 () Bool)

(assert (=> (and start!2017 (= P!4 P!4) t!193) tb!3))

(declare-fun result!3 () Bool)

(assert (=> tb!3 (= result!3 true)))

(assert (=> b!10122 t!193))

(declare-fun b_and!7 () Bool)

(assert (= b_and!5 (and (=> t!193 result!3) b_and!7)))

(declare-fun b_lambda!3705 () Bool)

(assert (=> (not b_lambda!3705) (not b!10123)))

(declare-fun t!195 () Bool)

(declare-fun tb!5 () Bool)

(assert (=> (and start!2017 (= P!4 P!4) t!195) tb!5))

(declare-fun result!5 () Bool)

(assert (=> tb!5 (= result!5 true)))

(assert (=> b!10123 t!195))

(declare-fun b_and!9 () Bool)

(assert (= b_and!7 (and (=> t!195 result!5) b_and!9)))

(declare-fun m!14435 () Bool)

(assert (=> start!2017 m!14435))

(declare-fun m!14437 () Bool)

(assert (=> b!10122 m!14437))

(assert (=> b!10122 m!14437))

(declare-fun m!14439 () Bool)

(assert (=> b!10122 m!14439))

(declare-fun m!14441 () Bool)

(assert (=> b!10123 m!14441))

(assert (=> b!10123 m!14441))

(declare-fun m!14443 () Bool)

(assert (=> b!10123 m!14443))

(check-sat (not start!2017) (not b_lambda!3705) (not b_lambda!3703) (not b_next!3) b_and!9)
(check-sat b_and!9 (not b_next!3))
