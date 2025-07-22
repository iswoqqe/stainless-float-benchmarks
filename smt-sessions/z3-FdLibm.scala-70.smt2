; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!637 () Bool)

(assert start!637)

(declare-fun res!1306 () Bool)

(declare-fun e!848 () Bool)

(assert (=> start!637 (=> (not res!1306) (not e!848))))

(declare-fun jz!42 () (_ BitVec 32))

(assert (=> start!637 (= res!1306 (and (bvsle #b00000000000000000000000000000010 jz!42) (bvslt jz!42 #b00000000000000000000000000010011)))))

(assert (=> start!637 e!848))

(assert (=> start!637 true))

(declare-datatypes ((array!70 0))(
  ( (array!71 (arr!31 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!31 (_ BitVec 32))) )
))
(declare-fun q!70 () array!70)

(declare-fun array_inv!11 (array!70) Bool)

(assert (=> start!637 (array_inv!11 q!70)))

(declare-fun b!1515 () Bool)

(declare-fun res!1307 () Bool)

(assert (=> b!1515 (=> (not res!1307) (not e!848))))

(declare-fun qInv!0 (array!70) Bool)

(assert (=> b!1515 (= res!1307 (qInv!0 q!70))))

(declare-fun b!1516 () Bool)

(assert (=> b!1516 (= e!848 false)))

(assert (= (and start!637 res!1306) b!1515))

(assert (= (and b!1515 res!1307) b!1516))

(declare-fun m!1823 () Bool)

(assert (=> start!637 m!1823))

(declare-fun m!1825 () Bool)

(assert (=> b!1515 m!1825))

(check-sat (not b!1515) (not start!637))
(check-sat)
