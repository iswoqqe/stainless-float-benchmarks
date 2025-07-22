; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2015 () Bool)

(assert start!2015)

(declare-fun b_free!1 () Bool)

(declare-fun b_next!1 () Bool)

(assert (=> start!2015 (= b_free!1 (not b_next!1))))

(declare-fun tp!2 () Bool)

(declare-fun b_and!1 () Bool)

(assert (=> start!2015 (= tp!2 b_and!1)))

(declare-fun res!8103 () Bool)

(declare-fun e!5856 () Bool)

(assert (=> start!2015 (=> (not res!8103) (not e!5856))))

(declare-datatypes ((array!745 0))(
  ( (array!746 (arr!329 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!329 (_ BitVec 32))) )
))
(declare-fun a!11 () array!745)

(assert (=> start!2015 (= res!8103 (= (size!329 a!11) #b00000000000000000000000000000101))))

(assert (=> start!2015 e!5856))

(declare-fun array_inv!278 (array!745) Bool)

(assert (=> start!2015 (array_inv!278 a!11)))

(assert (=> start!2015 tp!2))

(declare-fun b!10114 () Bool)

(declare-fun res!8104 () Bool)

(assert (=> b!10114 (=> (not res!8104) (not e!5856))))

(declare-fun P!4 () Int)

(declare-fun dynLambda!24 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!10114 (= res!8104 (dynLambda!24 P!4 (select (arr!329 a!11) #b00000000000000000000000000000000)))))

(declare-fun b!10115 () Bool)

(assert (=> b!10115 (= e!5856 (bvsge #b00000000000000000000000000000001 (size!329 a!11)))))

(assert (= (and start!2015 res!8103) b!10114))

(assert (= (and b!10114 res!8104) b!10115))

(declare-fun b_lambda!3701 () Bool)

(assert (=> (not b_lambda!3701) (not b!10114)))

(declare-fun t!191 () Bool)

(declare-fun tb!1 () Bool)

(assert (=> (and start!2015 (= P!4 P!4) t!191) tb!1))

(declare-fun result!1 () Bool)

(assert (=> tb!1 (= result!1 true)))

(assert (=> b!10114 t!191))

(declare-fun b_and!3 () Bool)

(assert (= b_and!1 (and (=> t!191 result!1) b_and!3)))

(declare-fun m!14429 () Bool)

(assert (=> start!2015 m!14429))

(declare-fun m!14431 () Bool)

(assert (=> b!10114 m!14431))

(assert (=> b!10114 m!14431))

(declare-fun m!14433 () Bool)

(assert (=> b!10114 m!14433))

(check-sat (not start!2015) (not b_lambda!3701) b_and!3 (not b_next!1))
(check-sat b_and!3 (not b_next!1))
