; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1123 () Bool)

(assert start!1123)

(declare-fun res!4132 () Bool)

(declare-fun e!2687 () Bool)

(assert (=> start!1123 (=> (not res!4132) (not e!2687))))

(declare-fun jz!67 () (_ BitVec 32))

(declare-datatypes ((array!399 0))(
  ( (array!400 (arr!174 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!174 (_ BitVec 32))) )
))
(declare-fun qq!69 () array!399)

(assert (=> start!1123 (= res!4132 (and (bvsle #b00000000000000000000000000000000 jz!67) (bvslt jz!67 #b00000000000000000000000000010100) (= (size!174 qq!69) #b00000000000000000000000000010100)))))

(assert (=> start!1123 e!2687))

(assert (=> start!1123 true))

(declare-fun array_inv!124 (array!399) Bool)

(assert (=> start!1123 (array_inv!124 qq!69)))

(declare-fun b!5259 () Bool)

(declare-fun res!4133 () Bool)

(assert (=> b!5259 (=> (not res!4133) (not e!2687))))

(declare-fun qqInv!0 (array!399) Bool)

(assert (=> b!5259 (= res!4133 (qqInv!0 qq!69))))

(declare-fun b!5260 () Bool)

(assert (=> b!5260 (= e!2687 false)))

(assert (= (and start!1123 res!4132) b!5259))

(assert (= (and b!5259 res!4133) b!5260))

(declare-fun m!8051 () Bool)

(assert (=> start!1123 m!8051))

(declare-fun m!8053 () Bool)

(assert (=> b!5259 m!8053))

(declare-fun m!8055 () Bool)

(assert (=> b!5260 m!8055))

(declare-fun m!8057 () Bool)

(assert (=> b!5260 m!8057))

(declare-fun m!8059 () Bool)

(assert (=> b!5260 m!8059))

(declare-fun m!8061 () Bool)

(assert (=> b!5260 m!8061))

(declare-fun m!8063 () Bool)

(assert (=> b!5260 m!8063))

(declare-fun m!8065 () Bool)

(assert (=> b!5260 m!8065))

(check-sat (not b!5259) (not start!1123))
(check-sat)
