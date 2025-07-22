; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!555 () Bool)

(assert start!555)

(declare-fun res!741 () Bool)

(declare-fun e!450 () Bool)

(assert (=> start!555 (=> (not res!741) (not e!450))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!555 (= res!741 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!555 e!450))

(assert (=> start!555 true))

(declare-datatypes ((array!30 0))(
  ( (array!31 (arr!14 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!14 (_ BitVec 32))) )
))
(declare-fun q!70 () array!30)

(declare-fun array_inv!2 (array!30) Bool)

(assert (=> start!555 (array_inv!2 q!70)))

(declare-fun b!670 () Bool)

(declare-fun res!742 () Bool)

(assert (=> b!670 (=> (not res!742) (not e!450))))

(declare-fun qInv!0 (array!30) Bool)

(assert (=> b!670 (= res!742 (qInv!0 q!70))))

(declare-fun b!671 () Bool)

(assert (=> b!671 (= e!450 false)))

(assert (= (and start!555 res!741) b!670))

(assert (= (and b!670 res!742) b!671))

(declare-fun m!889 () Bool)

(assert (=> start!555 m!889))

(declare-fun m!891 () Bool)

(assert (=> b!670 m!891))

(check-sat (not start!555) (not b!670))
(check-sat)
