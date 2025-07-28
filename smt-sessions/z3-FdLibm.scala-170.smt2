; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1151 () Bool)

(assert start!1151)

(declare-fun res!4216 () Bool)

(declare-fun e!2771 () Bool)

(assert (=> start!1151 (=> (not res!4216) (not e!2771))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!427 0))(
  ( (array!428 (arr!188 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!188 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!427)

(assert (=> start!1151 (= res!4216 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!188 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1151 e!2771))

(assert (=> start!1151 true))

(declare-fun array_inv!138 (array!427) Bool)

(assert (=> start!1151 (array_inv!138 qq!69)))

(declare-fun b!5343 () Bool)

(declare-fun res!4217 () Bool)

(assert (=> b!5343 (=> (not res!4217) (not e!2771))))

(declare-fun qqInv!0 (array!427) Bool)

(assert (=> b!5343 (= res!4217 (qqInv!0 qq!69))))

(declare-fun b!5344 () Bool)

(assert (=> b!5344 (= e!2771 false)))

(assert (= (and start!1151 res!4216) b!5343))

(assert (= (and b!5343 res!4217) b!5344))

(declare-fun m!8347 () Bool)

(assert (=> start!1151 m!8347))

(declare-fun m!8349 () Bool)

(assert (=> b!5343 m!8349))

(declare-fun m!8351 () Bool)

(assert (=> b!5344 m!8351))

(declare-fun m!8353 () Bool)

(assert (=> b!5344 m!8353))

(declare-fun m!8355 () Bool)

(assert (=> b!5344 m!8355))

(declare-fun m!8357 () Bool)

(assert (=> b!5344 m!8357))

(declare-fun m!8359 () Bool)

(assert (=> b!5344 m!8359))

(declare-fun m!8361 () Bool)

(assert (=> b!5344 m!8361))

(declare-fun m!8363 () Bool)

(assert (=> b!5344 m!8363))

(declare-fun m!8365 () Bool)

(assert (=> b!5344 m!8365))

(declare-fun m!8367 () Bool)

(assert (=> b!5344 m!8367))

(declare-fun m!8369 () Bool)

(assert (=> b!5344 m!8369))

(declare-fun m!8371 () Bool)

(assert (=> b!5344 m!8371))

(declare-fun m!8373 () Bool)

(assert (=> b!5344 m!8373))

(check-sat (not start!1151) (not b!5343))
(check-sat)
