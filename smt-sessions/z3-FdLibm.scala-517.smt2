; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2771 () Bool)

(assert start!2771)

(declare-fun res!11759 () Bool)

(declare-fun e!8605 () Bool)

(assert (=> start!2771 (=> (not res!11759) (not e!8605))))

(declare-fun jz!49 () (_ BitVec 32))

(assert (=> start!2771 (= res!11759 (and (bvsle #b00000000000000000000000000000010 jz!49) (bvslt jz!49 #b00000000000000000000000000010011)))))

(assert (=> start!2771 e!8605))

(assert (=> start!2771 true))

(declare-datatypes ((array!1223 0))(
  ( (array!1224 (arr!537 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!537 (_ BitVec 32))) )
))
(declare-fun q!79 () array!1223)

(declare-fun array_inv!485 (array!1223) Bool)

(assert (=> start!2771 (array_inv!485 q!79)))

(declare-fun b!15159 () Bool)

(declare-fun res!11760 () Bool)

(assert (=> b!15159 (=> (not res!11760) (not e!8605))))

(declare-fun qInv!0 (array!1223) Bool)

(assert (=> b!15159 (= res!11760 (qInv!0 q!79))))

(declare-fun z!100 () (_ FloatingPoint 11 53))

(declare-fun b!15160 () Bool)

(declare-fun j!78 () (_ BitVec 32))

(assert (=> b!15160 (= e!8605 false)))

(assert (= (and start!2771 res!11759) b!15159))

(assert (= (and b!15159 res!11760) b!15160))

(declare-fun m!21429 () Bool)

(assert (=> start!2771 m!21429))

(declare-fun m!21431 () Bool)

(assert (=> b!15159 m!21431))

(check-sat (not b!15159) (not start!2771))
(check-sat)
