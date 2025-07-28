; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!645 () Bool)

(assert start!645)

(declare-fun res!1644 () Bool)

(declare-fun e!919 () Bool)

(assert (=> start!645 (=> (not res!1644) (not e!919))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!645 (= res!1644 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!645 e!919))

(assert (=> start!645 true))

(declare-datatypes ((array!70 0))(
  ( (array!71 (arr!31 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!31 (_ BitVec 32))) )
))
(declare-fun q!70 () array!70)

(declare-fun array_inv!11 (array!70) Bool)

(assert (=> start!645 (array_inv!11 q!70)))

(declare-fun b!1883 () Bool)

(declare-fun res!1645 () Bool)

(assert (=> b!1883 (=> (not res!1645) (not e!919))))

(declare-fun qInv!0 (array!70) Bool)

(assert (=> b!1883 (= res!1645 (qInv!0 q!70))))

(declare-fun b!1884 () Bool)

(assert (=> b!1884 (= e!919 false)))

(assert (= (and start!645 res!1644) b!1883))

(assert (= (and b!1883 res!1645) b!1884))

(declare-fun m!3431 () Bool)

(assert (=> start!645 m!3431))

(declare-fun m!3433 () Bool)

(assert (=> b!1883 m!3433))

(check-sat (not b!1883) (not start!645))
(check-sat)
